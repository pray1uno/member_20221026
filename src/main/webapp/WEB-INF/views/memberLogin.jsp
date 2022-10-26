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
</head>
<body>
    <form action="/login" method="post">
        이메일 <br>
        <input type="text" name="loginEmail"> <br>
        비밀번호 <br>
        <input type="text" name="loginPassword"> <br>
        <input type="submit" value="로그인">

        <a href="/">Index로 돌아가기</a>
    </form>
</body>
</html>
