<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	

		<form action="updateQ_A.do" method="post">
			<input name="q_a_seq" type="hidden" value="${ q_a.q_a_seq }" />

			<table border="1" cellpadding="0" cellspacing="0">
			
			<tr>
					<td bgcolor="orange" width="80">제목</td>
					<td align="left"><input name="q_a_title" type="text"
						value="${ q_a.q_a_seq }" />
				</tr>
			

				<tr>
					<td bgcolor="orange" width="80">제목</td>
					<td align="left"><input name="q_a_title" type="text"
						value="${ q_a.q_a_title }" />
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left"><textarea name="q_a_contents" cols="70"
							rows="23">${ q_a.q_a_contents }</textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left"><input name="q_a_wdate" type="text"
						value="${ q_a.q_a_wdate }" />
				</tr>
				<tr>
					<td bgcolor="orange">조회수</td>
					<td align="left"><input name="q_a_hit" type="text"
						value="${ q_a.q_a_hit }" />
				</tr>
				
				<tr>
					<td bgcolor="orange">아이디</td>
					<td align="left"><input name="user_id" type="text"
						value="${ q_a.user_id }" />
				</tr>
				
				
				
				

				<%-- <input name="member_id" type="hidden" value="${ Member_ID }" /> --%>


				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="글 수정" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="go_insertQ_A.do">글 등록</a>&nbsp;&nbsp;&nbsp; <a
			href="deleteQ_A.do?q_a_seq=${ q_a.q_a_seq }">글 삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getQ_A_List.do">글 목록</a>
	
</body>
</html>