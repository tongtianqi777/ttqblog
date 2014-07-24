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
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.1/styles/default.min.css">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.1/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3 left-panel">
            <%@ include file="/WEB-INF/templates/left_panel.jsp" %>
        </div>
        <div class="col-md-9 right-panel">
            <div class="row" id="theme-block">

            </div>
            <div class="row blogs-area">

                <c:forEach var="blog" items="${blogs}">
                    <div class="col-md-12 blog-block">
                        <div class="row blog-info">
                            <div class="col-md-9 blog-title">
                                <h4>${blog.title}</h4>
                            </div>
                            <div class="col-md-3 blog-time">
                                <p>${blog.time}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <p>${blog.body}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
            <div class="row blog-footer">
                <p>TTQ Copyright Reserved 2014</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>
