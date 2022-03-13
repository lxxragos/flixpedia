package com.semi.flix.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.semi.flix.animation.AnimationDto;
import com.semi.flix.comment.CommentDto;
import com.semi.flix.common.FileUploadUtil;

@Controller
public class MemberController {
	
	@Resource(name="memberService")
	MemberService memberService;
	
	//회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占싱듸옙
	@RequestMapping("member/signup")
	String signup() {
		return "member/signup";
		//src/main/webapp/WEB-INF/view/test.jsp占쏙옙 占쏙옙占쏙옙占쏙옙
	}
	@RequestMapping("member/myinfo")
	String myinfo(Model model,MemberDto dto) {
		
		
		MemberDto resultDto = memberService.getInfo(dto);
		model.addAttribute("memberDto", resultDto);
		return "member/myinfo";
		//src/main/webapp/WEB-INF/view/test.jsp占쏙옙 占쏙옙占쏙옙占쏙옙
	}
	
	//占쌍쇽옙 占쌉뤄옙 占싯억옙창
	@RequestMapping("/member/jusoPopup")
	String jusoPopup() {
		return "member/jusoPopup";
		//src/main/webapp/WEB-INF/view/test.jsp占쏙옙 占쏙옙占쏙옙占쏙옙
	}
	
	//회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
	@RequestMapping(value="/member/insert", method=RequestMethod.POST)
	//@ResponseBody
	String member_insert(MemberDto dto, HttpServletRequest req, MultipartHttpServletRequest multi )
	{
		List<MultipartFile> multiList = new ArrayList<MultipartFile>();
		multiList.add(multi.getFile("upload"));
		
		List<String> fileNameList = new ArrayList<String>();
		String path = req.getServletContext().getRealPath("/");
		FileUploadUtil.upload( path,multiList, fileNameList);
		
		dto.setUser_images(fileNameList.get(0));

	    memberService.insert(dto);
		
		return "/member/signin";	

	}

	@RequestMapping(value="member/update", method=RequestMethod.POST)
	String member_update(MemberDto dto, HttpServletRequest req, MultipartHttpServletRequest multi)
	{
		MemberDto resultDto = memberService.getInfo(dto);
		System.out.println("리술트 : " + resultDto.getUser_images()+","+resultDto.getNick_name());
		if(dto.getUser_images().equals(resultDto.getUser_images())) {
			System.out.println("디티오 : " +dto.getUser_images()+","+dto.getNick_name());
			
			memberService.update(dto);
			
			System.out.println("_________________________________________이미지 변경 사항 없음");
		}else {
			System.out.println("______________________________________이미지 변경 사항 있음");
			
		List<MultipartFile> multiList = new ArrayList<MultipartFile>();
		multiList.add(multi.getFile("upload"));
		
		List<String> fileNameList = new ArrayList<String>();
		String path = req.getServletContext().getRealPath("/");
		FileUploadUtil.upload( path,multiList, fileNameList);
		
		dto.setUser_images(fileNameList.get(0));
		
		memberService.update(dto);
		
		HttpSession session = req.getSession();
		MemberDto resultDto2 = memberService.getInfo(dto);
		session.setAttribute("userid", resultDto2.getUser_id());
		session.setAttribute("username", resultDto2.getName());
		session.setAttribute("userseq", resultDto2.getUser_seq());
		session.setAttribute("nickname", resultDto2.getNick_name());
		session.setAttribute("userimage", resultDto2.getUser_images());
		String userid = (String) session.getAttribute("userid");
		String userimage = (String) session.getAttribute("userimage");
		System.out.println("!!1!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"+userid);
		System.out.println(userimage);
		}
		return "/home";
	}

	//占쏙옙占싱듸옙 占쌩븝옙확占쏙옙
	@RequestMapping("/member/isDuplicate")
	@ResponseBody 
	public HashMap<String, String> member_isDuplicate(MemberDto dto)
	{
		System.out.println("userid : " + dto.getUser_id());
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("result", memberService.isDuplicate(dto)+"");
		
		return map;
	}
	
	
	//占싸깍옙占쏙옙
	@RequestMapping(value="/member/signin")
	public String member_login()
	{
		return "member/signin";
	}
	
	//占싸깍옙占쏙옙 占쌜듸옙
	@RequestMapping(value="/member/login_proc")
	@ResponseBody
	public HashMap<String, String> member_login_proc(MemberDto dto, HttpServletRequest request)
	{
		
		HttpSession session = request.getSession();
		
		MemberDto resultDto = memberService.getInfo(dto);
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
				map.put("flag", "1"); //占싸그울옙 占쏙옙占쏙옙占쏙옙 占쏙옙占실울옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싼댐옙 
				session.setAttribute("userid", resultDto.getUser_id());
				session.setAttribute("username", resultDto.getName());
				session.setAttribute("userseq", resultDto.getUser_seq());
				session.setAttribute("nickname", resultDto.getNick_name());
				session.setAttribute("userimage", resultDto.getUser_images());
				
			}
			else
			{
				map.put("flag", "3");
			}
		}
		
		
		return map;
	}
	
	//占싸그아울옙
	@RequestMapping(value="/member/logout")
	public String member_logout(HttpServletRequest request)
	{
	
		HttpSession session = request.getSession();
		session.invalidate(); 
		
		return "redirect:/";
	}
	
	//占쏙옙占싱듸옙 찾占쏙옙 占쏙옙占쏙옙占쏙옙 占싱듸옙 
	@RequestMapping(value="/member/findid")
	public String member_findid()
	{	
		return "member/member_findid";
	}
	
	//占쏙옙占시ｏ옙占� 占쏙옙占쏙옙占쏙옙 占싱듸옙
	@RequestMapping(value="/member/findpassword")
	public String member_findpassword()
	{	
		return "member/member_findpassword";
	}
	
	//占쏙옙橘占싫Ｃｏ옙占�
	@RequestMapping(value="/member/findpass_proc")
	@ResponseBody
	public HashMap<String, String> member_findpass_proc(MemberDto dto)
	{	
		MemberDto findDto = memberService.findPassword(dto);
		HashMap<String, String> map = new HashMap<String, String>();
		if (findDto==null)
			map.put("result", "fail");
		else
		{
			map.put("result", findDto.getPassword());
			map.put("userid", findDto.getUser_id());
			map.put("username", findDto.getName());
		}
		return map;
	}
	
	//占쏙옙占싱듸옙찾占쏙옙
	@RequestMapping(value="/member/findid_proc")
	@ResponseBody
	public HashMap<String, String> member_findid_proc(MemberDto dto)
	{	
		MemberDto findDto = memberService.findId(dto);
		HashMap<String, String> map = new HashMap<String, String>();
		if (findDto==null)
			map.put("result", "fail");
		else
		{
			map.put("result", findDto.getUser_id());
			map.put("userid", findDto.getUser_id());
			map.put("username", findDto.getName());
		}
		return map;
	}
	
}
