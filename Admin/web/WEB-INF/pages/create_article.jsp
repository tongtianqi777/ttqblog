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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Create an article</title>
    <%@ include file="/WEB-INF/templates/shared_resources.jsp" %>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js" charset="utf-8"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/blog/submit" method="POST">
    <label>Title</label>
    <input type="text" name="title">
    <textarea id="editor1" name="editor1"></textarea>
    <button type="submit" class="btn btn-primary btn-lg">Submit</button>
</form>
<script type="text/javascript">
    CKEDITOR.replace( 'editor1',
            {
                filebrowserImageUploadUrl : '${pageContext.request.contextPath}/blog/imageupload',
                width: '80%',
                height:'80%'
            });
</script>
</body>
</html>
