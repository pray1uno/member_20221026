<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
    <h2>${sessionScope.loginEmail}님 환영합니다.</h2>
    <h2>model값 : ${modelEmail}</h2>

    <a href="/save">회원가입</a> <br>
    <a href="/login">로그인</a> <br>
    <a href="/members">회원목록 출력</a> <br>
    <button class="btn btn-primary" onclick="saveFn()">회원가입</button>
    <button class="btn btn-danger" onclick="loginFn()">로그인</button>
    <button class="btn btn-dark" onclick="listFn()">회원목록</button>
    <button class="btn btn-success" onclick="ajaxEx()">ajax 연습</button>

</body>
<script>
    const saveFn = () => {
        location.href = "/save";

    }

    const loginFn = () => {
        location.href = "/login";
    }

    const listFn = () => {
        location.href = "/members";
    }

    const ajaxEx = () => {
        location.href = "/ajax-ex";

    }

</script>
</html>
