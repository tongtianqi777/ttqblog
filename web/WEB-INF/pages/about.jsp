<%--
  Created by IntelliJ IDEA.
  User: edwin
  Date: 7/22/14
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>TTQ</title>
    <%@ include file="/WEB-INF/templates/shared_resources.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/blog/css/main.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3 left-panel">
            <%@ include file="/WEB-INF/templates/left_panel.jsp" %>
        </div>
        <div class="col-md-9 right-panel">
            <div class="row">
                <ul class="nav nav-tabs nav-justified">
                    <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/about">About</a></li>
                </ul>
            </div>
            <div class="row about-area">
                There will be something interesting about me.
            </div>
        </div>
    </div>
</div>

</body>
</html>
