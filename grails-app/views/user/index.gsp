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
        <div class="col-md-11 col-md-offset-1">
            <g:form class="form-inline" name="form" controller="user" id="form">
                <label style= "text-align: right" for="userName" class="col-sm-3 col-form-label">Enter user Name:</label>
                <div class="form-group mx-sm-3 mb-2">
                    <g:textField class="form-control" name="userName" value="${id}" title = "Enter Github UserName and it is a required field" placeholder="Enter Github UserName" required = "true"/>
                </div>

                <g:actionSubmit class="btn btn-primary mb-2" value="Find Now" action="search"/>
            </g:form>

            <br/>
            <br/>
            <span style ="color: red">Instructions</span>
            <ul>
                <li>The search field is a mandatory field</li>
                <li>Enter valid github user Name to view all the information</li>
            </ul>
        </div>
    </body>
</html>