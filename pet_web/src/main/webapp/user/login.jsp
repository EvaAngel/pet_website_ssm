<%--
  Created by IntelliJ IDEA.
  User: fuxin
  Date: 2018/4/23
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登陆页面</title>
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script>
        //没有验证码限制策略
        $(document).ready(function () {
            //alert("jinlail");
            var code = '';
            var telephone = '';
            //发送短信功能实现
            $("#send").click(function () {
                alert("成功进入");
                telephone = $("#telephone").val();
                //加入手机号与ip次数限制策略(js不会写):
                //说明：在这里即使写了js策略，也能跨过，首先在网页输入有效手机号，之后捕捉请求包，更改攻击手机号，进行go攻击

                $.ajax({
                    url: "/sendsms.do",   //这里不用加路径的！！！！
                    type: "POST",
                    //发送参数
                    data: {"telephone": telephone},
                    //返回结果
                    success: function (result) {
                        //控制台打印结果
                        //console.log("验证码是"+result);
                        code = result;
                        alert("验证码已返回" + code);
                    }
                });
            });

            $("#sub").click(function () {
                alert("成功进入");
                var v_code = $("#mes_valid").val();
                //客户端js验证验证码是否相同
                if (v_code = code) {
                    window.self.location = "/mes_valid.do";
                }
                else {
                    alert("输入错误");
                    window.self.location = "<%=request.getContextPath()%>/user/login.jsp";
                }
            });
        })
        $(document).ready(function () {
            //测试验证码xss
            function test(valid) {
                var val = valid;
            }

            /*$("#xss").click(function (valid) {
                //var valid = $("#valid").val();
                //alert(valid);
                )}*/
        })
        //测试以下
        /* function test() {
           alert("成功");
        }*/
    </script>
</head>
<body>
<jsp:include page="../common/head.jsp"></jsp:include>
<div style="margin-top: 80px" align="center">
    <form action="/isLogin.do" method="get">
        <table width="300px">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>验证码：</td>
                <td><input id="valid" type="text" name="valid" value=""></td>
            </tr>
            <tr>
                <td><input type="submit" value="登陆"></td>
                <td><input type="reset" value="重置"></td>
                <td><input id="xss" type="button" value="xss验证" onclick="test($valid)"></td>
            </tr>
        </table>
    </form>
</div>
<div id="messagevalid">
    <table align="center" width="300px">
        <tr>
            <td> 手机号：</td>
            <td><input id="telephone" type="text" name="telephone" size="12">&nbsp; <input id="send" type="button"
                                                                                           value="发送"></td>
        </tr>
        <tr>
            <td> 输入验证码：</td>
            <td><input id="mes_valid" type="text" name="mes_valid" size="12">&nbsp;<input id="sub" type="button"
                                                                                          value="提交"></td>
        </tr>
        <tr>
        </tr>
    </table>
</div>
<jsp:include page="../common/floor.jsp"></jsp:include>
</body>
</html>
