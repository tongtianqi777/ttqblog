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
