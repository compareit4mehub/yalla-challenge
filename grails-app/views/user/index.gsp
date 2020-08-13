<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <title>Github User Information</title>

</head>
<body>
<br/>

<div class="align-center">

<h4>Please enter the name pf GITHUB user information you wish to display</h4>
<g:form class="form-inline" name="form" controller="user" id="form">
    <g:textField class="form-control" name="userName" value="${userName}" title = "Username" placeholder="Github UserName" required = "true"/>
    </div>
    <g:actionSubmit class="btn btn-danger" value="Search" action="search"/>
</g:form>
</div>
</body>
</html>