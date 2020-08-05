<%--
  Created by IntelliJ IDEA.
  User: SANAL
  Date: 8/5/2020
  Time: 12:27 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <title>User Details</title>
</head>
<body>
<div class="col-md-4 col-md-offset-4 align-center">
    <p><u><strong>User Details</strong></u></p>
</div>
<br/>
<br/>
<div class="col-md-11 col-md-offset-1">
    <form>
        <div class="form-group row ">
            <label for="githubId" class="col-sm-2 col-form-label">GitHub Id:</label>
            <div class="col-sm-2">
                <g:textField class="form-control" name="githubId" readonly="true" value="${user.gitHubId}"/>
            </div>
        </div>
        <div class="form-group row ">
            <label for="bio" class="col-sm-2 col-form-label">Bio:</label>
            <div class="col-sm-6">
                <g:textArea class="form-control"  name="bio" readonly="true" value="$user.bio" rows="3" />
            </div>
        </div>
        <div class="form-group row">
            <label for="location" class="col-sm-2 col-form-label">Location:</label>
            <div class="col-sm-3">
                <g:textField class="form-control" name="location" readonly="true" value="${user.location}"/>
            </div>
        </div>
        <div class="form-group row ">
            <label for="noOfRepos" class="col-sm-2 col-form-label">Number of public repos:</label>
            <div class="col-sm-1">
                <g:textField class="form-control" name="noOfRepos" readonly="true" value="${user.public_repos}"/>
            </div>
        </div>
        <div class="form-group row">
            <label for="avatar" class="col-sm-2 col-form-label">Avatar:</label>
            <div class="col-sm-10">
                <g:img uri="$user.avatar_url" id="avatar" class="img-fluid" alt="Avatar Image"  width="100" height="100"/>
            </div>
        </div>
    </form>
</div>
</body>
</html>