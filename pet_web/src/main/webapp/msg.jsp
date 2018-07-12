<%--
  Created by IntelliJ IDEA.
  User: fuxin
  Date: 2018/5/9
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>文件返回信息</title>
</head>
<body>
<jsp:include page="common/head.jsp"></jsp:include>
<jsp:include page="common/banner.jsp"></jsp:include>
<div align="center">${requestScope.message}</div>
<jsp:include page="common/floor.jsp"></jsp:include>
</body>
</html>
