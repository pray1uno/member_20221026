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
</head>
<body>
  <h2>상세조회 결과</h2>

  <h5>회원번호 : ${findResult.id}</h5>
  <h5>이메일 : ${findResult.memberEmail}</h5>
  <h5>비밀번호 : ${findResult.memberPassword}</h5>
  <h5>이름 : ${findResult.memberName}</h5>
  <h5>나이 : ${findResult.memberAge}</h5>
  <h5>전화번호 : ${findResult.memberMobile}</h5>
  <a href="/">Index로 돌아가기</a>
</body>
</html>
