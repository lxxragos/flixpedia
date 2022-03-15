package com.semi.flix.admin.mail;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.flix.admin.mail.MailDto;
import com.semi.flix.admin.user.UserDto;
import com.semi.flix.admin.user.UserService;

@Controller
public class MailController {
	@Resource(name="mailService")
	MailService service;
	@Resource(name="userService")
	UserService service2;
	@Autowired
	private JavaMailSender mailSender;
	
//	@RequestMapping(value = "/sendMail", method = RequestMethod.GET)
//    public void sendMailTest() throws Exception{
//        
//        String subject = "test 메일";
//        String content = "메일 테스트 내용";
//        String from = "dlgurwn33@naver.com";
//        String to = "dlgurwn33@naver.com";
//        
//        try {
//            MimeMessage mail = mailSender.createMimeMessage();
//            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
//            // true는 멀티파트 메세지를 사용하겠다는 의미
//            
//            /*
//             * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능 
//             * MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
//             */
//            
//            mailHelper.setFrom(from);
//            // 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
//            // 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
//            //mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
//            mailHelper.setTo(to);
//            mailHelper.setSubject(subject);
//            mailHelper.setText(content, true);
//            // true는 html을 사용하겠다는 의미입니다.
//            
//            /*
//             * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
//             */
//            FileSystemResource file = new FileSystemResource(new File("")); 
//            mailHelper.addAttachment("업로드파일.형식", file);
//            
//            mailSender.send(mail);
//            
//        } catch(Exception e) {
//            e.printStackTrace();
//        }
//        
//    }
	
	@RequestMapping(value="/find", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> Mail_find(UserDto dto)
	{
		System.out.println("email : " + dto.getEmail());
		int id = service2.Mail_find(dto);
		HashMap<String, String> map = new HashMap<String, String>();
		
		if(id != 0) {
			map.put("result", id+"");
		}
		else {
			map.put("result", "fail");
		}
		return map;
	}
	
	 @RequestMapping(value = "/sendMail", method = RequestMethod.POST)
	    public String sendMailTest2(MailDto dto) throws Exception{
		 	
	        String subject = dto.getTitle();
	        String content = dto.getContent();
	        String from = dto.getEmail2();
	        String to = dto.getEmail1();
	        
	        System.out.println(dto);
	        
	        
	        final MimeMessagePreparator preparator = new MimeMessagePreparator() {
	            
	            public void prepare(MimeMessage mimeMessage) throws Exception{
	                final MimeMessageHelper mailHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
	                
	                mailHelper.setFrom(from);
	                mailHelper.setTo(to);
	                mailHelper.setSubject(subject);
	                mailHelper.setText(content, true);
	 
	            }
	        };
	        
	        try {    
	            mailSender.send(preparator);
	            
	        } catch(Exception e) {
	            e.printStackTrace();
	        }        
	        service.insert(dto);
	        
	        return "redirect:/list";
	        
	    }
	 
	 @RequestMapping(value="/list", method=RequestMethod.GET)
		String mail_getList(Model model, MailDto dto)
		{
		 	System.out.println("toString");
			dto.setStart(dto.getPg()*10);
			
			List<MailDto> list = service.getList(dto);
			
			model.addAttribute("mailList", list);
			model.addAttribute("totalCnt", service.getTotal(dto));
			
			System.out.println(list);
			System.out.println(service.getTotal(dto));
			System.out.println("list--------------->" + list);
			return "admin/util/util_list"; //jsp 파일명
		}
	 
	 @RequestMapping(value="/view", method=RequestMethod.GET)
		String Mail_View(String seq, Model model)
		{
			System.out.println("toString");
			MailDto dto = service.getView(seq);
			model.addAttribute("mailDto",dto);
			return "admin/util/mail_view";
		}
	 
}
