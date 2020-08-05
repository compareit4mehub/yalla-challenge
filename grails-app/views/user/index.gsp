<%--
  Created by IntelliJ IDEA.
  User: SANAL
  Date: 8/3/2020
  Time: 11:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <title>User Details</title>
</head>
<body>
<br/>
<div class="col-md-4 col-md-offset-4 align-center">
    <g:form class="form-inline" name="form" controller="user" id="form">
        <div class="form-group mx-sm-3 mb-2">
            <g:textField class="form-control" name="userName" value="${userName}" placeholder="Enter Github UserName"/>
        </div>
        <g:actionSubmit class="btn btn-primary mb-2" value="Search" action="search"/>
    </g:form>
</div>
</body>
</html>