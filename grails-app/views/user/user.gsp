<%--
	Created by IntelliJ IDEA.
	User: talaladnan
	Date: 11/08/2020
	Time: 14:22
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Information</title>
</head>
<body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>


<div class>
    <h2 style="margin-left: 100px; margin-top: 40px; margin-bottom: 40px">Github User Search Result</h2>
</div>
<div class>
    <div class></div>
    <g:img uri="$user.avatarUrl"
           id="avatar"
           class="img-fluid"
           alt="Avatar Image"
           width="150"
           height="150"
           style="border-radius:5px; padding: 4px; display: block; margin-left: 100px; background: #dddddd"
    />
</div>
<br>
<div class>
    <div class style="padding-left:100px">
        <label class style="font-weight: bold;">GITHUB ID:</label>
        <span class style="padding: 100px">${user.gitId}</span>
    </div>
</div>
<br>
<div class style="padding-left:100px">
    <label class style="font-weight: bold;">LOGIN: </label>
    <span readonly="true" style="padding: 135px">${user.userName}</span>
</div>
<br>
<div class style="padding-left:100px;">
    <label class style="font-weight: bold;">LOCATION: </label>
    <span readonly="true" style="margin-left: 100px">${user.location}</span>
</div>
<br>

<div style="padding-left:100px">
    <label class style="font-weight: bold;">PUBLIC REPOS: </label>
    <span readonly="true" style="margin-left: 65px"> ${user.publicRepos}</span>
</div>
<br>

<div class style="padding-left: 100px">
    <label class style="font-weight: bold; ">USER BIO:</label>
    <g:textArea style="padding-top: 10px; padding-bottom: 10px; padding-right: 100px; padding-left: 100px;
                       height: 200px; border: #dddddd"
                 name="bio"
                 readonly="true"
                 value="${user.bio}"

     />
</div>


</body>
</html>