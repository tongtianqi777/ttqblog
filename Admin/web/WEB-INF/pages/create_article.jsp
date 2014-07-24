<%--
  Created by IntelliJ IDEA.
  User: edwin
  Date: 7/23/14
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create an article</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
    <%@ include file="/WEB-INF/templates/shared_resources.jsp" %>
</head>
<body>
<form action="${pageContext.request.contextPath}/blog/submit" method="POST">
    <label>Title</label>
    <input type="text" name="title">
    <textarea id="editor1" name="editor1"></textarea>
    <button type="submit">Submit</button>
</form>
<script type="text/javascript">
    CKEDITOR.replace( 'editor1',
            {
                filebrowserImageUploadUrl : '${pageContext.request.contextPath}/blog/imageupload',
                width: '100%',
                height:'100%'
            });
</script>
</body>
</html>
