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
</head>
<body>
    <h2>신규 회원가입</h2>
    <form action="/save" method="post">
        이메일 <br>
        <input type="text" name="memberEmail"> <br>
        비밀번호 <br>
        <input type="text" name="memberPassword"> <br>
        이름 <br>
        <input type="text" name="memberName"> <br>
        나이 <br>
        <input type="text" name="memberAge"> <br>
        전화번호 <br>
        <input type="text" name="memberMobile"> <br>
        <input type="submit" value="회원가입">
    </form>
</body>
</html>
