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
</head>
<body >
<div class="row">
    <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card my-5">
            <div class="card-body">
                <h5 class="card-title text-center">Please Enter Github Account Name</h5>
                <g:if test='${flash.message}'>
                    <div class="message">${flash.message}</div>
                </g:if>
                <g:form controller="user">
                    <div class="form-group">
                        <label>UserName</label>
                        <g:textField class="form-control" name="userName" value="${userName}" required="true" autofocus="true"></g:textField>
                    </div>
                    <g:actionSubmit class="btn btn-lg btn-primary btn-block text-uppercase" value="Submit" action="getUser"/>
                </g:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>