<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberLogin</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
    <div class="container">
        <form action="/login" method="post" name="loginForm">
            <input type="text" name="memberEmail" placeholder="이메일" class="form-control"> <br>
            <input type="text" name="memberPassword" placeholder="비밀번호" class="form-control"> <br>
            <input type="button" value="로그인" onclick="login()" class="btn btn-primary">
        </form>
    </div>
<%--    <form action="/login" method="post">--%>
<%--        이메일 <br>--%>
<%--        <input type="text" name="loginEmail"> <br>--%>
<%--        비밀번호 <br>--%>
<%--        <input type="text" name="loginPassword"> <br>--%>
<%--        <input type="submit" value="로그인">--%>

<%--        <a href="/">Index로 돌아가기</a>--%>
    </form>
</body>
<script>
    const login = () => {
        document.loginForm.submit();
    }
</script>
</html>
