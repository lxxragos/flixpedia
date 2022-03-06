<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
request.setAttribute("commonURL", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@include file="../include/css.jsp" %>
	<title>FlixGo – Online Movies, TV Shows & Cinema HTML Template</title>
</head>
<body class="body">

 <div class="sign section--bg" data-bg="img/section/section.jpg">
 	<div class="container">
 		<div class="col-12">
 			<div class="sign__content">
				<form name="form" id="form" method="post" class="sign__form">
					<a href="index.html" class="sign__logo">
					<img src="../resources/img/logo.svg" alt=""></a>
					
					<div class="sign__group">
						<input type="text" class="sign__input" placeholder="이름" id="name" name="name">
					</div>
					<div class="sign__group">
						<input type="text" class="sign__input" placeholder="아이디" id="user_id" name="user_id">
					</div>
					<div class="card__description">
						<p style="font-size: 11px">아이디는 영문 대소문자와 숫자 4~12자리로 입력하세요</p>
					</div><br>
					<button class="sign__btn" type="button" id="btnDuplicate" 
					style="width:100px; height: 30px; margin:2px;">중복체크</button>
					<input type="hidden" id="id_check" name="id_check" value="N"/>
					<br>
					<div class="sign__group">
						<input type="password" class="sign__input" placeholder="비밀번호" id="password" name="password">
					</div>
					<div class="sign__group">
						<input type="password" class="sign__input" placeholder="비밀번호 확인" id="pwd_ck" name="pwd_ck">
					</div>

					<div class="card__description">
						<p style="font-size: 11px">비밀번호는 영문 대소문자와 숫자 4~12자리로 입력하세요</p>
					</div><br>

					<div class="sign__group">
						<input type="text" class="sign__input" placeholder="별명" id="nick_name" name="nick_name">
					</div>
					<div class="sign__group">
						<input type="text" class="sign__input" placeholder="Email" id="email" name="email">
					</div>
					<div class="sign__group">
						<input type="text" class="sign__input" placeholder="전화번호" id="phone" name="phone">
					</div>
					<button type="button" class="sign__btn" 
							onClick="goPopup();" value="팝업_domainChk"
							style="width:100px; height: 30px; margin:2px;">주소 검색</button>
							<div class="card__description">
								<p style="font-size: 11px">주소는 검색을 이용해주세요</p>
							</div>
							<br>
			
					<div class="sign__group">
						<input type="text" class="sign__input" placeholder="우편번호" id="zipcode" name="zipcode" readonly="readonly">
					</div>
					
					<div class="sign__group">
						<input type="text" class="sign__input" placeholder="주소" id="address1" name="address1" readonly="readonly">
					</div>
					
					<div class="sign__group">
						<input type="text" class="sign__input" placeholder="상세주소" id="address2" name="address2" readonly="readonly">
					</div>
					
					<button type="button" class="sign__btn" onclick="goWrite()">등록</button>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp" %>

</body>
</html>
<script language="javascript">
function goPopup()
{
	var pop = window.open("jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	}

function jusoCallBack(address1,address2,zipcode)
{
		document.myform.address1.value = address1;
		document.myform.address2.value = address2;
		document.myform.zipcode.value = zipcode;
}
	
function goWrite() 
{
	var id_check =document.form.id_check.value;
	var frm = document.form;
	if( frm.name.value.trim()==""){
		alert("이름을 입력하세요");
		frm.name.focus();
		return false;
	};
	
	
	 if( frm.user_id.value.trim()==""){
   		alert("아이디를 입력하세요");
   		frm.user_id.focus();
   		return false;
   		} 
	 
	if( frm.password.value.trim()=="")
	{
		alert("비밀번호를 입력하세요");
		frm.password.focus();
		return false;
	}
	
	 var password1RegExp = /^[a-zA-z0-9]{4,12}$/; //비밀번호 유효성 검사
     if (!password1RegExp.test(frm.password.value.trim())) {
         alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
         form.password.value = "";
         form.password.focus();
         return false;
     }



	if( frm.password.value.trim()!=frm.pwd_ck.value.trim())
	{
		alert("비밀번호가 다릅니다");
		frm.pwd_ck.focus();
		return false;
	};
	if( frm.nick_name.value.trim()=="")
	{
		alert("별명을 입력하세요");
		frm.nick_name.focus();
		return false;
	};
	if( frm.email.value.trim()=="")
	{
		alert("이메일을 입력하세요");
		frm.email.focus();
		return false;
	};
	if( frm.zipcode.value.trim()=="")
	{
		alert("우편번호를 입력하세요");
		frm.zipcode.focus();
		return false;
	};
	if( frm.address1.value.trim()=="")
	{
		alert("도로명 주소를 입력하세요");
		frm.address1.focus();
		return false;
	};
	if( frm.address2.value.trim()=="")
	{
		alert("상세 주소를 입력하세요");
		frm.address2.focus();
		return false;
	};

	
	
	if(id_check=="N"){
		alert("아이디 중복체크를 하세요")
		frm.user_id.focus();
	}else{
   //var frmData = new FormData(document.myform);
  // console.log( frmData );
   var queryString = $("form[name=form]").serialize(); 
	$.ajax({
      url:"${commonURL}/member/insert",
      data:queryString,
      type:"POST",
      data:queryString
   })
   .done( (result)=>{
      console.log(result);
      alert("회원가입이 되었습니다.");
      location.href="${commonURL}/"; //시작화면으로 이동하기
   })
   .fail( (error)=>{
      console.log(error);
   })
	}
}

$(()=>{
    $("#btnDuplicate").click(()=>{
       $.ajax({
          url:"${commonURL}/member/isDuplicate", //요청 url정보
          data:{user_id:$("#user_id").val()},   //서버로 전달할 데이터정보: JSON형태
          dataType:"json",  //결과를 jSON으로 받겠다. 결과가 text로 온다
          type:"POST"
       })
       .done((data)=>{
          //데이터가 정상적으로 수신되면 done메서드 호출되면서 매개변수는 전달받은 값
          //값은 dataType 속성을 안주면 text로 온다.
          console.log(data.result);
         var frm = document.form;
         
         if( frm.user_id.value.trim()==""){
      		alert("아이디를 입력하세요");
      		frm.user_id.focus();
      		return false;
      		} 
         
      	 var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
       	 if (!idRegExp.test(frm.user_id.value.trim())) {
              alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
              form.user_id.value = "";
              form.user_id.focus();
              return false;
          }
         if(data.result == "true") //중복
         {
            alert("이미 사용중인 아이디입니다.");
         }
         else
         {
            alert("사용가능합니다.")
            $("#id_check").val("Y");
            $("#user_id").prop("readonly", true);   //수정못하게 막는 기능
            
         }
       })
       .fail((error)=>{
          //통신에러, 오류에 관한 것
             console.log(error)
       })
    })
 })
	
	
	
	
	

</script>