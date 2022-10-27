<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberDetail</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
</head>
<body>
<div class="container">
  <a href="/">Index로 돌아가기</a>
  <table class="table table-striped">
    <tr>
      <th>ID</th>
      <td>${findResult.id}</td>
    </tr>
    <tr>
      <th>Email</th>
      <td>${findResult.memberEmail}</td>
    </tr>
    <tr>
      <th>Password</th>
      <td>${findResult.memberPassword}</td>
    </tr>
    <tr>
      <th>Name</th>
      <td>${findResult.memberName}</td>
    </tr>
    <tr>
      <th>Age</th>
      <td>${findResult.memberAge}</td>
    </tr>
    <tr>
      <th>Mobile</th>
      <td>${findResult.memberMobile}</td>
    </tr>
  </table>
</div>
<%--  <h2>상세조회 결과</h2>--%>

<%--  <h5>회원번호 : ${findResult.id}</h5>--%>
<%--  <h5>이메일 : ${findResult.memberEmail}</h5>--%>
<%--  <h5>비밀번호 : ${findResult.memberPassword}</h5>--%>
<%--  <h5>이름 : ${findResult.memberName}</h5>--%>
<%--  <h5>나이 : ${findResult.memberAge}</h5>--%>
<%--  <h5>전화번호 : ${findResult.memberMobile}</h5>--%>

</body>
</html>
