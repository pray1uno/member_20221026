<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberMain</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
    <div class="container">
        <h2>${sessionScope.loginEmail}님 환영합니다.</h2>
        <h2>model값 : ${modelEmail}</h2>

        <a href="/">Index로 돌아가기</a>
    </div>
</body>
</html>
