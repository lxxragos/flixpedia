package com.semi.flix.member;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	
	@Resource(name="memberService")
	MemberService memberService;
	
	//회원가입 페이지 이동
	@RequestMapping("member/signup")
	String signup() {
		return "member/signup";
		//src/main/webapp/WEB-INF/view/test.jsp로 포워딩
	}
	
	//주소 입력 팝업창
	@RequestMapping("/member/jusoPopup")
	String jusoPopup() {
		return "member/jusoPopup";
		//src/main/webapp/WEB-INF/view/test.jsp로 포워딩
	}
	
	//회원가입 저장
	@RequestMapping(value="/member/insert", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> member_insert(MemberDto dto)
	{
		System.out.println("userid : " + dto.getUser_id());
		memberService.insert(dto);
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("result", "success");
		return map;
	}
	
	
	//아이디 중복확인
	@RequestMapping("/member/isDuplicate")
	@ResponseBody  //Ajax요청시 데이타가 출력되야 한다.jsp 이동을 막는다 
	               //자바객체를  json 형태로 전환시켜서 반환한다 
	public HashMap<String, String> member_isDuplicate(MemberDto dto)
	{
		System.out.println("userid : " + dto.getUser_id());
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("result", memberService.isDuplicate(dto)+"");
		
		return map;
	}
	
	
	//로그인
	@RequestMapping(value="/member/signin")
	public String member_login()
	{
		return "member/signin";
	}
	
	//로그인 작동
	@RequestMapping(value="/member/login_proc")
	@ResponseBody
	public HashMap<String, String> member_login_proc(MemberDto dto, HttpServletRequest request)
	{
		//각 페이지별로 정보 공유가 안된다. 
		//예외(쿠키 또는 세션- 세션을 사용한다.)
		//쿠키 - 본인컴퓨터에 session- 서버에(보안을 강화시키고자 할때(
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
				map.put("flag", "1"); //로그온 성공시 세션에 정보를 저장한다 
				session.setAttribute("userid", resultDto.getUser_id());
				session.setAttribute("username", resultDto.getName());
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
	
	//로그아웃
	@RequestMapping(value="/member/logout")
	public String member_logout(HttpServletRequest request)
	{
	
		HttpSession session = request.getSession();
		session.invalidate(); //세션의 데이터 삭제 
		
		return "redirect:/";
	}
	
	//아이디 찾기 페이지 이동 
	@RequestMapping(value="/member/findid")
	public String member_findid()
	{	
		return "member/member_findid";
	}
	
	//비번찾기 페이지 이동
	@RequestMapping(value="/member/findpassword")
	public String member_findpassword()
	{	
		return "member/member_findpassword";
	}
	
	//비밀번호찾기
	@RequestMapping(value="/member/findpass_proc")
	@ResponseBody
	public HashMap<String, String> member_findpass_proc(MemberDto dto)
	{	
		MemberDto findDto = memberService.findPassword(dto);
		HashMap map = new HashMap<String, String>();
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
	
	//아이디찾기
	@RequestMapping(value="/member/findid_proc")
	@ResponseBody
	public HashMap<String, String> member_findid_proc(MemberDto dto)
	{	
		MemberDto findDto = memberService.findId(dto);
		HashMap map = new HashMap<String, String>();
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
