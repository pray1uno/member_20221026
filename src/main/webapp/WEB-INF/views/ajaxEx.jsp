<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-28
  Time: 오후 1:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajaxEx</title>
    <script src="/resources/js/jquery.js"></script>
</head>
<body>
<button onclick="ajax1()">ajax 요청 1</button>
<button onclick="ajax2()">ajax 요청 2</button>
<button onclick="ajax3()">ajax 요청 3</button>
<button onclick="ajax4()">ajax 요청 4</button>
<button onclick="ajax5()">ajax 요청 5</button>
<button onclick="ajax6()">ajax 요청 6</button>
</body>
<script>
    const param1 = "안녕하세요";
    const param2 = "오늘은 금요일";
    const ajax1 = () => {
        console.log("ajax1 호출");
        $.ajax({
            // ajax를 이용하여 /ajax1 이라는 주소로 get 요청
            type: "get", // http request method
            url: "/ajax1", // 요청하는 주소
            success: function () { // 요청이 성공하고 서버로 부터 받는 응답
                console.log("성공");
            },
            error: function () { // 요청이 실패하는 경우 실행됨
                console.log("실패");
            }
        });

    }

    const ajax2 = () => {
        console.log("ajax2 호출");
        // /ajax2 주소로 post 요청을 하고 controller 메서드 정의
        $.ajax({
            type: "post",
            url: "/ajax2",
            success: function () {
                console.log("됐냐?");
            },
            error: function () {
                console.log("힝");
            }
        });

    }

    const ajax3 = () => {
        console.log("ajax3 호출");

        $.ajax({
            type: "get",
            url: "/ajax3",
            data: {
                // 보내고자하는 파라미터 이름, 보내고자하는 데이터
                value1: param1,
                value2: "it's friday"
            },

            success: function () {
                console.log("성공");
            },
            error: function () {
                console.log("실패");
            }
        });
    }

    const ajax4 = () => {
        console.log("ajax4 호출");
        $.ajax({
            type: "post",
            url: "/ajax4",
            data: {
                value1: param1,
                value2: param2
            },
            dataType: "text", // 리턴받을 데이터 형식
            success: function (result) { // controller 호출된 주소의 해당 메서드의 마지막줄 리턴(return)값에 해당함
                console.log("성공");
                console.log(result);
            },
            error: function () {
                console.log("실패");
            }
        });
    }

    const ajax5 = () => {
      $.ajax({
          type: "post",
          url: "/ajax5",
          data: {
              value1: param1,
              value2: param2
          },
          dataType: "json",
          success: function (result) {
              console.log("성공");
              console.log(result);
          },
          error: function () {
              console.log("실패");
          }
      })
    }

    const ajax6 = () => {
        $.ajax({
            type: "post",
            url: "/ajax6",
            data: {
                value1: param1,
                value2: param2
            },
            dataType: "json",
            success: function (result) {
                console.log("성공");
                console.log(result);
            },
            error: function () {
                console.log("실패");
            }
        })
    }
</script>
</html>
