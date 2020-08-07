<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/5/2020
  Time: 8:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
    <style type="text/css">
    label{
        float:left;
        width:65px;
    }
    </style>
</head>

<body>
    <g:form controller="user" style="padding-left: 200px">
        <div style="width: 220px">
            <lable>UserName:</lable>
            <label>
            <input type="text" name="username"/>
            </label>
            <label>Password:</label><label>
            <input type="password" name="password"/>
            </label>
            <g:actionSubmit value="Submit" action="login"/>
        </div>
    </g:form>
</body>
</html>