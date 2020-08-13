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
        <g:form class="form-inline" name="form" controller="user" id="form">
        <div class="form-group mx-sm-3 mb-2">
        <g:textField class="form-control" name="login" value="${login}" title = "Enter Github username here" placeholder="Github UserName" required = "true"/>
        </div>
        <g:actionSubmit class="btn btn-danger" value="Search" action="search"/>
        </g:form>
        </div>
    </body>
</html>