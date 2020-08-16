<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <title>Github User Information</title>
</head>
<body>
<br/>
<div>
<br>
    <h5 style="text-align: center">Welcome to the GitHub User Search App</h5>
<br>
    <h6 style="text-align: center">Please enter the name of GITHUB user information you wish to display</h6>
<br>
    <g:form class="form-inline" name="form" controller="user" id="form">
    <g:textField class="form-control"
                 style="width: 500px; width: 300px; margin: 0 auto "
                 name="userName" value="${userName}"
                 title = "Username"
                 placeholder="Github UserName"
                 required = "true"/>
</div>
<br>
    <g:actionSubmit class="btn btn-danger"
                    value="Search"
                    action="search"
                    style=" text-align: center;
                            display: block;
                            margin: 0 auto;"
    />
    </g:form>
</div>
</body>
</html>