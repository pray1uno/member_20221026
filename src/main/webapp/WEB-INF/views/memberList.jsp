<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>memberList</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
    <style>
        table, tr, th, td {
            /*border: 1px solid black;*/
            /*border-collapse: collapse;*/
            padding: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <table class="table table-striped table-hover">
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Password</th>
            <th>Name</th>
            <th>Age</th>
            <th>Mobile</th>
            <th>조회</th>
            <th>삭제</th>
        </tr>
        <c:forEach items="${memberList}" var="list">
            <tr>
                <td>${list.id}</td>
                <td>${list.memberEmail}</td>
                <td>${list.memberPassword}</td>
                <td>${list.memberName}</td>
                <td>${list.memberAge}</td>
                <td>${list.memberMobile}</td>
                <td>
                    <a href="/member?id=${list.id}">상세조회</a>
                </td>
                <td>
<%--                    <a href="/delete?id=${list.id}">삭제</a>--%>
                    <button class="btn btn-danger" onclick="deleteMember('${list.id}')">삭제</button>
                </td>
            </tr>
        </c:forEach>
        <a href="/">Index로 돌아가기</a>
    </table>
</div>

<%--<table>--%>
<%--    <tr>--%>
<%--        <th>번호</th>--%>
<%--        <th>이메일</th>--%>
<%--        <th>비밀번호</th>--%>
<%--        <th>이름</th>--%>
<%--        <th>나이</th>--%>
<%--        <th>전화번호</th>--%>
<%--        <th>회원삭제</th>--%>
<%--    </tr>--%>

<%--    <c:forEach items="${memberList}" var="list">--%>
<%--    <tr>--%>
<%--    <td>${list.id}</td>--%>
<%--    <td><a href="/member?id=${list.id}">${list.memberEmail}</a></td>--%>
<%--    <td>${list.memberPassword}</td>--%>
<%--    <td>${list.memberName}</td>--%>
<%--    <td>${list.memberAge}</td>--%>
<%--    <td>${list.memberMobile}</td>--%>
<%--    <td><button value="삭제하기"><a href="/delete?id=${list.id}">삭제하기</a></button></td>--%>
<%--    </tr>--%>
<%--    </c:forEach> <br>--%>
<%--</table>--%>
<%--    <a href="/">Index로 돌아가기</a>--%>

</body>
<script>
    const deleteMember = (clickedId) => {
        <%--console.log('${memberList}');--%>
        console.log("클릭한 id값 : ", clickedId);
        location.href = "/delete?id="+clickedId;
    }
</script>
</html>
