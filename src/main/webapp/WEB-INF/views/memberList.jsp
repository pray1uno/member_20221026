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
    <script src="/resources/js/jquery.js"></script>
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
            <th>조회(ajax)</th>
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
                <td>
                    <button class="btn btn-primary" onclick="findMember('${list.id}')">조회</button>
                </td>
            </tr>
        </c:forEach>
        <a href="/">Index로 돌아가기</a>
    </table>
    <div id="detail-area">

    </div>
</div>

</body>
<script>
    const deleteMember = (clickedId) => {
        <%--console.log('${memberList}');--%>
        console.log("클릭한 id값 : ", clickedId);
        location.href = "/delete?id="+clickedId;
    }

    const findMember = (findId) => {
        console.log("findId", findId);
        const detailArea = document.getElementById("detail-area");

        $.ajax({
            type: "get",
            url: "/detail-ajax",
            dataType: "json",
            data: {
                id : findId
            },
            success: function (result) {
                console.log("result : ", result);
                console.log("조회id : ", result.id);
                let areaResult =
                    "        <table class=\"table table-striped\">\n" +
                    "            <tr>\n" +
                    "                <th>id</th>\n" +
                    "                <td>"+ result.id +"</td>\n" +
                    "            </tr>\n" +
                    "            <tr>\n" +
                    "                <th>email</th>\n" +
                    "                <td>" + result.memberEmail + "</td>\n" +
                    "            </tr>\n" +
                    "            <tr>\n" +
                    "                <th>password</th>\n" +
                    "                <td>" + result.memberPassword + "</td>\n" +
                    "            </tr>\n" +
                    "            <tr>\n" +
                    "                <th>name</th>\n" +
                    "                <td> " + result.memberName + "</td>\n" +
                    "            </tr>\n" +
                    "            <tr>\n" +
                    "                <th>age</th>\n" +
                    "                <td>" + result.memberAge + "</td>\n" +
                    "            </tr>\n" +
                    "        </table>";
                detailArea.innerHTML = areaResult;
            },
            error: function () {
                console.log("실패");
            }
        });
    }
</script>
</html>
