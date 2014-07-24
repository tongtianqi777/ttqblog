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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/personal/css/main.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3 left-panel">
            <img src="resources/basic_info/self.jpg" class="img-rounded" id="profile_img">

            <h2>${info.name}</h2>
            <h3>
                <c:forEach var="line" items="${info.title}">
                    ${line}<br>
                </c:forEach>
            </h3>


            <c:forEach var="property" items="${info.properties}">
                <address>
                    <strong>${property.name}</strong><br>
                    ${property.value}
                </address>
            </c:forEach>

            <blockquote>
                <p>${info.motto}</p>
            </blockquote>

            <a class="btn btn-primary btn-block" href="${info.facebook}" target="_blank">Facebook</a>
            <a class="btn btn-info btn-block" href="${info.linkedin}" target="_blank">Linkedin</a>

        </div>
        <div class="col-md-9 right-panel">
            <div class="row">
                <ul class="nav nav-pills nav-justified">
                    <li class="active"><a href="#">Blog</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </div>
            <div class="row">

                <c:forEach var="blog" items="${blogs}">
                    <div class="col-md-12 blog-block">
                        <div class="row blog-info">
                            <div class="col-md-10 blog-title">
                                <h4>${blog.title}</h4>
                            </div>
                            <div class="col-md-2 blog-time">
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
        </div>
    </div>
</div>

</body>
</html>
