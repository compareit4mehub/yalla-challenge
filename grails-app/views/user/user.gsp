<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/7/2020
  Time: 11:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main"/>
  <title>User Details</title>
</head>
<body>
<div class="row">
  <div class="col-sm-4 col-md-4">
  <g:img uri="$user.avatar_image_url" id="avatar" class="img-fluid" alt="Avatar Image"  width="160" height="160"/>
  </div>
  <div class="col-sm-4 col-md-4"><h1>Welcome to Github</h1></div>
  <div class="col-sm-4 col-md-4">
    <label class="col-form-label">GitHub Id:</label>
    <span class="font-weight-bold">${user.gitHubId}</span>
  </div>
</div>
<div class="col-sm-4 col-md-4" style="padding-left:80px">
  <span readonly="true" class="col-form-label font-weight-bold">${user.userName}</span>
</div>
<div class="col-sm-4 col-md-4" style="padding-left:80px">
  <label class="col-form-label font-weight-bold">Location: </label>
  <span readonly="true">${user.location}</span>
</div>
<div class="col-sm-12 col-md-12">
  <label class="col-form-label font-weight-bold col-sm-1" style="padding-left:65px">Bio:</label>
  <g:textArea class="col-sm-5" name="bio" readonly="true" value="${user.bio}" rows="3"/>
</div>
<div class="col-sm-4 col-md-4" style="padding-left:80px">
  <label class="col-form-label font-weight-bold">Number of public repos:</label>
  <span readonly="true">${user.public_repos}
</div>
</body>
</html>