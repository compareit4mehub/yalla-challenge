<%--
	Created by IntelliJ IDEA.
	User: talaladnan
	Date: 11/08/2020
	Time: 14:22
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User Information</title>
</head>
<body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>


<div class>
    <h1>Welcome to Github User Search</h1>
</div>
<br>
<div class>
    <div class style="padding-left:100px"></div>
    <g:img uri="$user.avatarUrl" id="avatar" class="img-fluid" alt="Avatar Image"  width="100" height="100"/>
</div>
<br>
<div class>
    <div class style="padding-left:100px">
        <label class>GITHUB ID:</label>
        <span class="font-italic">${user.gitId}</span>
    </div>
</div>
<br>
<div class style="padding-left:100px">
    <label class=font-italic">LOGIN </label>
    <span readonly="true" class="font-italic">${user.userName}</span>
</div>
<br>
<div class style="padding-left:100px">
    <label class="font-italic">LOCATION: </label>
    <span readonly="true">${user.location}</span>
</div>
<br>
<div class>
    <label class="font-italic" style="padding-left:100px">USER BIO:</label>
    <g:textArea name="bio" readonly="true" value="${user.bio}" rows="3"/>
</div>
<br>
<div style="padding-left:100px">
    <label class="font-italic"># OF PUBLIC REPOS</label>
    <span readonly="true">${user.publicRepos}
</div>
</body>
</html>