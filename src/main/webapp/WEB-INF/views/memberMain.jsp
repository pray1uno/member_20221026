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

<%--        <a href="/update">내 정보 수정하기</a>--%>

        <button class="btn btn-warning" onclick="updateForm()">내 정보 수정하기</button>
        <button class="btn btn-danger" onclick="logout()">로그아웃</button>
        <a href="/">Index로 돌아가기</a>
    </div>
</body>
<script>
    const updateForm = () => {
        // /update 주소를 요청하는 update 함수
        location.href = "/update";
    }

    const logout = () => {
        location.href = "/logout";

    }
</script>
</html>
