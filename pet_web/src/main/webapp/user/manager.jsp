<%--
  Created by IntelliJ IDEA.
  User: fuxin
  Date: 2018/5/9
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
<jsp:include page="../common/head.jsp"></jsp:include>
<jsp:include page="../common/banner.jsp"></jsp:include>
<form action="/sendvideo.do" method="post" style="margin-top: 100px" enctype="multipart/form-data">
    <table align="center" width="500px" style="height: 300px">
        <tr>
            <td>请选择视频类型:</td>
            <td><select style="width: 100px">
                <option>喵星人</option>
                <option>汪星人</option>
                <option>鸟儿飞</option>
                <option>其它</option>
            </select></td>
        </tr>
        <tr>
            <td>宠物视频上传：</td>
            <td><input type="file" name="file" id="file"  accept="video/mp4" style="width: 300px"></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>

<jsp:include page="../common/floor.jsp"></jsp:include>
</body>
</html>
