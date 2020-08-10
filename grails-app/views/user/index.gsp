<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <title>User Details</title>
    </script>
</head>
<body>
<br/>
<div class="col-md-4 col-md-offset-4 align-center">
    <g:form class="form-inline" name="form" controller="user" id="form">
        <div class="form-group mx-sm-3 mb-2">
            <g:textField class="form-control" name="userName" value="${id}" title = "Enter Github UserName and it is a required field" placeholder="Enter Github UserName" required = "true"/>
        </div>
        <g:actionSubmit class="btn btn-primary mb-2" value="Search" action="search"/>
    </g:form>
</div>
</body>
</html>