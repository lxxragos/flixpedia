package com.semi.flix.Q_A;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("Q_A")
public class Q_A_Controller {
	@Autowired
	private Q_A_Service q_a_Service;

	@RequestMapping(value = "/go_insertQ_A.do")
	public String go_insertQ_A() throws IOException {
		return "q_a/insertQ_A";

	}

	// �� ���
	@RequestMapping(value = "/insertQ_A.do")
	public String insertQ_A(Q_A_DTO dto) throws IOException {
		System.out.println("[-----------------------]" + dto.getUser_seq());
		q_a_Service.insertQ_A(dto);
		return "redirect:/getQ_A_List.do";
	}

	// �� ���� ������ ����
	@RequestMapping(value = "/go_updateQ_A.do")
	public String go_updateQ_A(Q_A_DTO dto) {
		q_a_Service.getQ_A(dto);
		return "q_a/updateQ_A";
	}

	// �� ����
	@RequestMapping("/updateQ_A.do")
	public String updateQ_A(@ModelAttribute("q_a") Q_A_DTO dto) {
		q_a_Service.updateQ_A(dto);
		return "redirect:/getQ_A_List.do";
		// return "notice/getNoticeList";
	}

	// �� ����
	@RequestMapping("/deleteQ_A.do")
	public String deleteQ_A(Q_A_DTO dto) {
		q_a_Service.deleteQ_A(dto);
		return "redirect:/getQ_A_List.do";
	}

	// �� �� ��ȸ
	@RequestMapping(value = "/getQ_A.do")
	public String getQ_A(Model model, Q_A_DTO dto) {
		model.addAttribute("q_a", q_a_Service.getQ_A(dto)); // Model ���� ����
		System.out.println("===> Mybatis�� getNotice() ��� ó��");
		return "q_a/getQ_A"; // View �̸� ����
	}

	// �� ��� �˻�
	@RequestMapping(value = "/getQ_A_List.do")
	public String getQ_A_List(Model model, Q_A_DTO dto , HttpServletRequest request, HttpServletResponse response) {
			HttpSession session = request.getSession();

		System.out.println("===> Mybatis�� getNoticeList() ��� ó��");
		System.out.println("===========1111=========="+ dto.getUser_seq());
		
		dto.setUser_seq((String) session.getAttribute("userseq"));
		
		// Model ���� ����
		model.addAttribute("q_a_List", q_a_Service.getQ_A_List(dto));
		System.out.println("===> ��Ʈ�ѷ� getNoticeList() ���ó����");
		System.out.println(model);
		// return "redirect:getNoticeList.do";
		return "q_a/getQ_A_List"; // View �̸� ����
	}
}
