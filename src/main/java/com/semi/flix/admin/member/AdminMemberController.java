package com.semi.flix.admin.member;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.flix.Visit.VisitDto;
import com.semi.flix.Visit.VisitService;
import com.semi.flix.admin.adminQ_A.AdminQ_ADto;
import com.semi.flix.admin.adminQ_A.AdminQ_AService;
import com.semi.flix.admin.mail.MailDto;

import javax.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

import org.springframework.core.io.FileSystemResource;
import java.io.File;
@Controller
public class AdminMemberController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Resource(name="adminmemberService")
	AdminMemberService adminmemberService;
	@Resource(name="visitService")
	VisitService visitService;
	@Resource(name="adminQ_AService")
	AdminQ_AService q_a_Service;
	
	@RequestMapping("/admin/adminmember/join")
	String adminmember_register(Model model)
	{
		AdminMemberDto dto = new AdminMemberDto();
		model.addAttribute("adminmemberDto", dto);
		return "admin/member/adminmember_register";
	}
	
	@RequestMapping("/admin/adminmember/myinfo")
	String adminmember_myinfo(Model model, HttpServletRequest request, HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		
		String userid = (String)session.getAttribute("userid");
		if(userid==null)
			return "redirect:/admin/adminindex";
		
		AdminMemberDto dto = new AdminMemberDto();
		dto.setUserid(userid);
		
		AdminMemberDto resultDto = adminmemberService.getInfo(dto);
		model.addAttribute("adminmemberDto", resultDto);
		return "admin/member/adminmember_view";
	}
	
	@RequestMapping("/admin/adminmember/isDuplicate")
	@ResponseBody	//Ajax요청시 데이터가 출려돼야 한다. jsp 이동을 막는다.
					//자바 객체를 json형태로 전환시켜서 반환한다.
	public HashMap<String, String> adminmember_isDuplicate(AdminMemberDto dto)
	{
		System.out.println("userid : " + dto.getUserid());
		HashMap<String, String> map = new HashMap<String, String>();

		map.put("result", adminmemberService.isDuplicate(dto)+"");

		return map;
	}
	
	@RequestMapping(value="/admin/adminmember/insert", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public HashMap<String, String> adminmember_insert(AdminMemberDto dto)
	{
		System.out.println("userid : " + dto.getUserid());
		
		if( dto.getId().equals("") )
			adminmemberService.insert(dto);
		else
			adminmemberService.update(dto);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "success");
		return map;
	}
	
	@RequestMapping(value="/admin/adminmember/login_proc")
	@ResponseBody
	public HashMap<String, String> adminmember_login_proc(AdminMemberDto dto, HttpServletRequest request)
	{
		//각 페이지별로 정보 공유가 안된다.
		//예외(쿠키 또는 세션 - 세션을 많이 사용한다.)
		//쿠키 - 본인 컴퓨터에 / 세션 - 서버에(보안을 강화시키고자 할때)
		HttpSession session = request.getSession();
		
		AdminMemberDto resultDto = adminmemberService.getInfo(dto);
		HashMap<String, String> map = new HashMap<String, String>();
		
		System.out.println(resultDto);
		
		if(resultDto==null)
		{
			map.put("flag", "2");
		}
		else
		{
			if(resultDto.getPassword().equals(dto.getPassword()))
			{
				map.put("flag", "1");	//로그인 성공시 세션에 정보를 저장한다.
				session.setAttribute("id", resultDto.getId());
				session.setAttribute("userid", resultDto.getUserid());
				session.setAttribute("username", resultDto.getUsername());///////
				session.setAttribute("email", resultDto.getEmail());
				session.setAttribute("phone", resultDto.getPhone());
			}
			else
			{
				map.put("flag", "3");
			}
		}
		
		return map;
	}
	
	@RequestMapping(value="/admin/adminmember/logout")
	public String adminmember_logout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.invalidate();	//세션의 데이터 삭제
		
		return "redirect:admin/adminindex";
	}
	
	@RequestMapping(value="/admin/adminmember/findId")
	public String adminmember_findId(HttpServletRequest request)
	{
		return "admin/member/adminmember_findId";
	}
	
	@RequestMapping(value="/admin/adminmember/findPassword")
	public String adminmember_findPassword(HttpServletRequest request)
	{
		return "admin/member/adminmember_findPassword";
	}
	
	@RequestMapping(value="/admin/adminmember/findId_proc")
	@ResponseBody
	public HashMap<String,String> adminmember_findId_proc(AdminMemberDto dto)
	{
		// 이름, 이메일,, 전화번호 확신
		System.out.println("[adminmember_findId_proc----->]"+dto);
		AdminMemberDto findDto = adminmemberService.findId(dto);
		System.out.println(findDto);
		HashMap map = new HashMap<String, String>();
		System.out.println(map);
		
		if(findDto==null)
			map.put("result", "fail");
		else {
			map.put("result", findDto.getUserid());
			map.put("userid", findDto.getUserid());
			map.put("username", findDto.getUsername());
		}
		return map;
	}
	
	@RequestMapping(value="/admin/adminmember/findPassword_proc")
	@ResponseBody
	public HashMap<String,String> adminmember_findPassword_proc(AdminMemberDto dto)
	{
		AdminMemberDto findDto = adminmemberService.findPassword(dto);
		HashMap map = new HashMap<String, String>();
		if(findDto==null)
			map.put("result", "fail");
		else
		{
			map.put("result", findDto.getPassword());
			map.put("userid", findDto.getUserid());
			map.put("username", findDto.getUsername());
		}
		return map;
	}
	//http://localhost:8080/flixpedia/admin/adminmember/juso
	@RequestMapping(value="/admin/adminmember/update")
	@ResponseBody
	public HashMap<String,String> adminmember_update(AdminMemberDto dto)
	{
		adminmemberService.update(dto);
		HashMap map = new HashMap<String, String>();
		map.put("result", "success");
		return map;
	}
	
	@RequestMapping(value="/admin/adminindex")
	   public String adminmember_index()
	   {
	      return "/admin/adminindex";
	   }
	
	@RequestMapping(value="/admin/adminhome", method=RequestMethod.GET)
	   public String adminmember_home(Model model, AdminMemberDto dto, VisitDto dto2, AdminQ_ADto dto3)
	   {
		  model.addAttribute("totalCnt", visitService.getTotal(dto2));
		  model.addAttribute("cnt", adminmemberService.cnt(dto));
		  model.addAttribute("user", adminmemberService.user(dto));
		  model.addAttribute("category", adminmemberService.category(dto));
		  model.addAttribute("dataList", visitService.getMonth());
		  model.addAttribute("q_a_cnt", q_a_Service.getTotal(dto3));
	      return "/admin/adminhome";
	   }
	@RequestMapping("/admin/adminmember/juso")
	String jusoPopup() {
		return "admin/adminmember/juso";
	}
	@RequestMapping(value="/admin/mailsend")
	   public String mailSend(Model model)
	   {
	
		model.addAttribute("mailDto", new MailDto());
		
	      return "/admin/util/mailSend";
	   }
	
}
