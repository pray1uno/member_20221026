<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberSave.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
    <style>
        #save-form {
            width: 1000px;
        }
    </style>
</head>
<body>
    <div class="container" id="save-form">
        <form action="/save" method="post" name="saveForm">
            <input type="text" name="memberEmail" placeholder="이메일" class="form-control">
            <span id="email-input-check"></span> <br>
            <input type="text" name="memberPassword" placeholder="비밀번호" class="form-control">
            <span id="password-input-check"></span> <br>
            <input type="text" name="memberName" placeholder="이름" class="form-control">
            <span id="name-input-check"></span> <br>
            <input type="text" name="memberAge" placeholder="나이" class="form-control">
            <span id="age-input-check"></span> <br>
            <input type="text" name="memberMobile" placeholder="전화번호" class="form-control">
            <span id="mobile-input-check"></span> <br>
            <input type="button" value="회원가입" onclick="save()" class="btn btn-primary">
<%--            <button onclick="btn1Fn()"></button>--%>
<%--           form 태그 안에서 button은 제출의 역할을 함. 바로 전송 돼버리기 때문에 button 태그 사용에 주의해야 함 --%>
        </form>
    </div>
<%--    <h2>신규 회원가입</h2>--%>
<%--    <form action="/save" method="post">--%>
<%--        이메일 <br>--%>
<%--        <input type="text" name="memberEmail"> <br>--%>
<%--        비밀번호 <br>--%>
<%--        <input type="text" name="memberPassword"> <br>--%>
<%--        이름 <br>--%>
<%--        <input type="text" name="memberName"> <br>--%>
<%--        나이 <br>--%>
<%--        <input type="text" name="memberAge"> <br>--%>
<%--        전화번호 <br>--%>
<%--        <input type="text" name="memberMobile"> <br>--%>
<%--        <input type="submit" value="회원가입">--%>
<%--    </form>--%>
</body>
<script>
    const save = () => {
        console.log("save 함수 호출");
        if (document.saveForm.memberEmail.value == "") {
            // alert("이메일을 입력해 주세요.")
            // 이메일을 입력하지 않았을 때 span에 빨간색으로 출력
            const emailCheck = document.getElementById("email-input-check");
            emailCheck.innerHTML = "이메일을 입력해 주세요.";
            emailCheck.style.color = "red";
            return false;
        } else if (document.saveForm.memberPassword.value == "") {
            const passwordCheck = document.getElementById("password-input-check");
            passwordCheck.innerHTML = "비밀번호를 입력해 주세요.";
            passwordCheck.style.color = "red";
            return false;
        } else if (document.saveForm.memberName.value == "") {
            const nameCheck = document.getElementById("name-input-check");
            nameCheck.innerHTML = "이름을 입력해 주세요.";
            nameCheck.style.color = "red";
            return false;
        } else if (document.saveForm.memberAge.value == "") {
            const ageCheck = document.getElementById("age-input-check");
            ageCheck.innerHTML = "나이를 입력해 주세요.";
            ageCheck.style.color = "red";
            return false;
        } else if (document.saveForm.memberMobile.value == "") {
            const mobileCheck = document.getElementById("mobile-input-check");
            mobileCheck.innerHTML = "전화번호를 입력해 주세요.";
            mobileCheck.style.color = "red";
            return false;
        }
        document.saveForm.submit();
        // 현재 문서에서 해당 이름의 form 을 submit 하겠다.
    }

    const btn1Fn = () => {
        console.log("btn1Fn 함수 호출");
    }
</script>
</html>
