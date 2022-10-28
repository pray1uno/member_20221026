<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오후 3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberUpdate</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.rtl.min.css">
    <style>
        #update-form {
            width: 800px;
        }
    </style>
</head>
<body>
<div class="container" id="update-form">
    <form action="/update" method="post" name="updateSave">
        id :<input type="text" name="id" value="${member.id}" class="form-control" readonly>
        Email :<input type="text" name="memberEmail" value="${member.memberEmail}" class="form-control" readonly>
        Password :<input type="text" name="memberPassword" id="inputPassword" class="form-control">
        Name : <input type="text" name="memberName" value="${member.memberName}" class="form-control">
        Age : <input type="text" name="memberAge" value="${member.memberAge}" class="form-control">
        Mobile <input type="text" name="memberMobile" value="${member.memberMobile}" class="form-control">
        <input type="button" value="수정" class="btn btn-warning" onclick="update()">
    </form>
</div>
</body>
<script>
    const update = () => {
        const passwordDB = '${member.memberPassword}'; // DB에서 가져온 비밀번호
        /*
        * 사용자가 input 태그에 입력한 비밀번호와 DB에서 가져온 비밀번호가 일치하면 수정 요청을 보내고
        * 일치하지 않으면 alert으로 비밀번호가 일치하지 않습니다. 출력
        * */
        const inputPassword = document.getElementById("inputPassword").value;

        if (passwordDB == inputPassword) {
            document.updateSave.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다.");
        }

    }
</script>
</html>
