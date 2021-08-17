<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>먹어도돼</title>
<link rel="stylesheet" href="../css/join.css"/>
</head>
<body>
   <div class="wrapper">
      <c:import url="../inc/header.jsp"></c:import>
      <main id="main">
         <!-- 화면에 보여질 콘텐츠 박스 --> 
         <div class="inner">
            <!-- flexbox -->
            <article class="main-container">
               <h2>회원가입</h2>
               <section class="item item1">
                  <h3  style="display:none">회원가입폼</h3>
                  <div class="join-form">
                     <form action="/user/join" method="post" name="join" onsubmit="return birthConn()">
                        <div class="nec-input">
                           <span class="esq">*</span>
                           <span>필수입력사항</span>
                        </div>
                        
                        <table class="input-table">
                           <tr>
                              <th>
                                 아이디
                                 <span class="esq">*</span>
                              </th>
                              <td>
                                       <input type="text" id="userId" name="userId" autofocus="autofocus" size="40" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
                              </td>
                              <td>
                                 <button type="button" id="checkId" class="overlap-button" value="N">중복확인</button>
                              </td>
                           </tr>
                           <tr>
                           		<td></td>
								<td><div id="idMsg"></div></td>
								<td></td>
							</tr>
                           <tr>
                              <th>
                                 비밀번호
                                 <span class="esq">*</span>
                              </th>
                              <td>
                                       <input type="password" id="user-password" size="40" name="userPw" placeholder="비밀번호를 입력해주세요">
                              </td>
                           </tr>                           
                           <tr>
                              <th>
                                 비밀번호확인
                                 <span class="esq">*</span>
                              </th>
                              <td>
                                       <input type="password" id="user-password-chk" size="40" name="user-password-chk" placeholder="비밀번호를 한번 더 입력해주세요">
                              </td>
                           </tr>
                           <tr>
                           	<td></td>
                           	<td><div id="pwMsg"></div></td>
                           	<td></td>
                           </tr>
                           <tr>
                              <th>
                                 이름
                                 <span class="esq">*</span>
                              </th>
                              <td>
                                       <input type="text" id="user-name" name="userName" placeholder="이름을 입력해주세요" size="40">
                              </td>
                           </tr>
                           <tr>
                              <th>
                                 이메일
                                 <span class="esq">*</span>
                              </th>
                              <td>
                                       <input type="text" id="email" name="email" placeholder="ex)doeat@eat.com" size="40">
                              </td>
                           </tr>
                           <tr>
                              <th>
                                 휴대폰
                                 <span class="esq">*</span>
                              </th>
                              <td>
                                       <input type="text" id="phone" name="phone" placeholder="숫자만 입력해주세요" size="40">
                              </td>
                              <td>
                                 <button class="overlap-button">인증번호 받기</button>
                              </td>
                           </tr>
                           <tr>
                              <th>
                                 생년월일
                              </th>
                              <td>
                                       <div class="birth-box">
                                          <input type="hidden" id="birth" name="birth">
                                          <input type="text" id="birth-year" name="birth-year" placeholder="YYYY">                                      
                                          <span class="birth-slash">/</span>
                                          <input type="text" id="birth-month" name="birth-month" placeholder="MM">
                                          <span class="birth-slash">/</span>
                                          <input type="text" id="birth-day" name="birth-day" placeholder="DD">
                                       </div>
                              </td>
                           </tr>
                           <tr>
                              <th>
                                 키
                              </th>
                              <td>
                                       <input type="text" id="height" name="height" size="40" placeholder="키(cm): 숫자만 입력해주세요(ex : 173)">
                              </td>
                           </tr>
                           <tr>
                              <th>
                                 몸무게
                              </th>
                              <td>
                                       <input type="text" id="weight" name="weight" size="40" placeholder="체중(kg): 숫자만 입력해주세요(ex : 60)">
                              </td>
                           </tr>
                           <tr class="disease">
                              <th>
                                 질병
                                 <span class="esq">*</span>
                              </th>
                              <td>
                                       <select name="diseaseNo" id="diseaseNo">
                                          <option value="00" selected="selected">해당없음</option>
                                          <option value="01">당뇨</option>
                                    <optgroup label="간질환">
                                       <option value="02">급성간질환</option>
                                       <option value="02">간경변증</option>
                                    </optgroup>
                                    <option value="03">심장질환</option>
                                    <option value="04">신장질환</option>
                                    <option value="05">뇌질환</option>
                                    <option value="06">암</option>
                                       </select>
                              </td>
                           </tr>               
                              
                           <tr class="reg-agree">
                              <th>
                                 이용약관동의
                              </th>
                              <td>
                                       <div class="check-view">
                                          <label class="all-agree-chk">
                                             <input type="checkbox" name="all-agree" id="all-agree" class="all-agree"/>
                                             <span class="ico"></span>
                                             전체 동의합니다.
                                          </label>
                                          <p class="sub">
                                             선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.
                                          </p>
                                       </div>
                                       
                                       <div class="check-view">
                                          <label class="reg-agree-chk">
                                             <input type="checkbox" name="reg-agree-chk" id="reg-agree-chk"/>
                                             <span class="ico"></span>
                                             이용약관 동의 <span class="nec-reg">&nbsp(필수)</span>
                                          </label>
                                       </div>
                                       
                                       <div class="check-view">
                                          <label class="privacy-agree-es">
                                             <input type="checkbox" name="privacy-agree-es" id="privacy-agree-es"/>
                                             <span class="ico"></span>
                                             개인정보 수집 · 이용 동의 <span class="nec-reg">&nbsp(필수)</span>
                                          </label>
                                       </div>
                                       
                                       <div class="check-view">
                                          <label class="age-chk">
                                             <input type="checkbox" name="age-chk" id="age-chk"/>
                                             <span class="ico"></span>
                                             본인은 만 14세 이상입니다. <span class="nec-reg">&nbsp(필수)</span>
                                          </label>
                                       </div>
                              </td>
                           </tr>                                                                                                            
                        </table>
                        
                        
                        <div class="submit-box">
                           <div class="join-box">
                              <button type="submit" id="join-btn" disabled="disabled" class="join-button">가입하기</button>
                           </div>
                        </div>
                     </form>
                     <div class="cancel-box">
                        <button class="cancel-button" onClick="location.href='/user/joinForm'">취소하기</button>
                     </div>                              
                  </div>
               </section>
            </article>
         </div>
      </main>
      <c:import url="../inc/footer.jsp"></c:import>   
   </div>
   
   <script>
   window.addEventListener('load',function(){
      var main = document.querySelector("#main");
      var regAgree = main.querySelector(".reg-agree");
      var allAgreeChk = regAgree.querySelector(".all-agree-chk input[type='checkbox']");
      
      allAgreeChk.onchange = function(){
         var inputs = regAgree.querySelectorAll(".check-view input[type='checkbox']");
         
         for(var i=1 ; i < inputs.length ; i++){
            inputs[i].checked = allAgreeChk.checked;
         }
      }
   })
   function birthConn(){
      var birthYear = $("#birth-year").val();
      var birthMonth = $("#birth-month").val();
      var birthDay = $("#birth-day").val();
      var birth = "";
      birth = birthYear + "-" + birthMonth + "-" + birthDay;
      $("#birth").val(birth);
   }
   $(document).ready(function(){
		
		console.log("document");
		
		var getIdCheck = RegExp(/^[a-zA-Z0-9]{6,12}$/);
		console.log(getIdCheck.test($("userId").val()));
		if(!getIdCheck.test($("userId").val())){
			console.log("유효성 검사");
		}
		if($("#userId").val() == null){
			console.log("if");
			$("#userId").focus();
		}

		$("#userId").on('keyup', function(){
			console.log($(this).val());
			$("#idMsg").text("아이디 중복체크가 필요합니다.");
			if(!getIdCheck.test($("userId").val())){
				console.log("유효성 검사");
			}
		})
		
		$("#checkId").click(function(){
			console.log("check");
			$.ajax({
				url : "/user/checkId",
				type : "post",
				dataType : "json",
				data : {"userId" : $("#userId").val()},
				
				success : function(data){
					if(data == 1){
						console.log(data);
						$("#idMsg").text("사용할 수 없는 아이디입니다.");
					}else if(data == 0){
						console.log(data);
						$("#checkId").attr("value", "Y");
						$("#idMsg").text("사용할 수 있는 아이디입니다.");
						const target = document.getElementById('join-btn');
						target.disabled = false;
					}
				}
			})
		})
		
		$("#user-password").on('keyup', function(){
			$("#pwMsg").text("입력한 비밀번호를 확인하세요.");
		})
		
		$("#user-password-chk").on('keyup', function(){
			var password = document.getElementById('user-password');					 
			var passwordConfirm = document.getElementById('user-password-chk');	
			var pwMsg = document.getElementById('pwMsg');				
			var correctColor = "#D3E73E";	
			var wrongColor ="#ff0000";	
			
			if(password.value == passwordConfirm.value){
				pwMsg.style.color = correctColor;
				pwMsg.innerHTML ="비밀번호가 일치합니다.";
			}else{
				pwMsg.style.color = wrongColor;
				pwMsg.innerHTML ="비밀번호가 일치하지 않습니다.";
			}
		})
	})
   </script>
   
</body>
</html>