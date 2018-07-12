<%--
  Created by IntelliJ IDEA.
  User: fuxin
  Date: 2018/4/23
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>视频页</title>
</head>
<body>
<jsp:include page="../common/head.jsp"></jsp:include>
<jsp:include page="../common/banner.jsp"></jsp:include>
<div id="hot" style="margin-top: 50px">
    <table align="center" width="800px">
        <tr>
            <td>热门</td>
        </tr>
        <tr>
            <td><a href="<%=request.getContextPath()%>/video/video_message.jsp">
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </a>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
        </tr>
        <tr>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
        </tr>
    </table>
</div>
<div id="news" style="margin-top: 50px">
    <table align="center" width="800px">
        <tr>
            <td>最新</td>
        </tr>
        <tr>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
        </tr>
        <tr>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
            <td>
                <video width="150" height="150" controls="controls">
                    <source src="<%=request.getContextPath()%>/film/1.mp4" type="video/mp4"/>
                    <source src="movie.ogg" type="video/ogg"/>
                    <source src="movie.webm" type="video/webm"/>
                </video>
            </td>
        </tr>
    </table>
</div>


<jsp:include page="../common/floor.jsp"></jsp:include>
</body>
</html>
