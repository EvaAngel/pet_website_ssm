<%--
  Created by IntelliJ IDEA.
  User: fuxin
  Date: 2018/4/23
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>视频详细信息</title>
    <script src="../js/jquery-3.3.1.min.js">
    </script>
    <script>
        $(document).ready(function () {
            $("#btn").click(function () {
                var discuss = $("#discuss").val();
                var videoid = $("#videoid").val();
                //alert(videoid);
                $.ajax({
                    url: "/sub_comments.do",   //这里不用加路径的！！！！
                    type: "POST",
                    //发送参数
                    data: {"discuss": discuss, "videoid": videoid},
                    //返回结果
                    success: function (result) {
                        //控制台打印结果
                        //console.log("验证码是"+result);
                       // alert("结果已返回");
                        var item;
                        $.each(JSON.parse(result), function (i, r) {
                            item = "<tr><td>" + r["comment"] + "</td><td>"+r["user"]+"</td></tr>";
                            $(".table").append(item);
                        });
                    }
                });
            })
        })
    </script>
    <script>
        var message=document.cookie;
        alert(message);
    </script>
</head>
<body>
<jsp:include page="../common/head.jsp"></jsp:include>
<jsp:include page="../common/banner.jsp"></jsp:include>
<div id="total" align="center">
    <div id="video">
        <video width="500" height="500" controls="controls">
            <source src="../film/1.mp4" type="video/mp4"/>
            <source src="movie.ogg" type="video/ogg"/>
            <source src="movie.webm" type="video/webm"/>
        </video>
    </div>
    <div id="opinion" style="margin-top: 50px">
        <div id="command_youself">
            <form>
                <table width="500px">
                    <tr>
                        <td><input type="text" name="discuss" id="discuss">
                            <input id="videoid" type="hidden" name="videoid" value="1">
                        </td>
                        <td><input id="btn" type="button" value="评论"></td>
                    </tr>
                </table>
            </form>
        </div>
        <div id="command_others" style="margin-top: 50px">
            <table width="600px" class="table">
            </table>
        </div>
    </div>
</div>
<jsp:include page="../common/floor.jsp"></jsp:include>

</body>
</html>
