<%--
  Created by IntelliJ IDEA.
  User: SANAL
  Date: 8/17/2020
  Time: 11:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="HandheldFriendly" content="true">
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <title>Github User Details</title>
    <style>
    body {
        padding-top: 50px;
    }
    .glyphicon {
        margin-bottom: 10px;
        margin-right: 10px;
    }
    small {
        display: block;
        line-height: 1.428571429;
        color: #999;
    }
    .form-horizontal .form-group {
        margin-left: 0;
        margin-right: 0;
    }
    .form-group .form-control:last-child {
        border-top-left-radius: 4px;
        border-bottom-left-radius: 4px;
    }
    img {
        max-width: 100%;
        height: auto;
    }
    @media screen and (max-width: 1060px) {
        #primary { width:67%; }
        #secondary { width:30%; margin-left:3%;}
    }
    @media screen and (max-width: 768px) {
        #primary { width:100%; }
        #secondary { width:100%; margin:0; border:none; }
    }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-10 col-md-4 col-md-offset-4 align-center">
            <g:form class="form-inline" name="searchForm" id="searchForm">
                <div class="form-group mx-sm-3 mb-2">
                    <g:textField class="form-control" name="userName" value="${userName}" placeholder="Enter Github UserName" required="true"/>
                </div>
                <g:actionSubmit class="btn btn-primary mb-2" value="Search" action="search"/>
            </g:form>
        </div>
        <br/>
        <br/>
        <br/>
        <g:if test="${user!=null}">
            <div class="col-xs-12 col-sm-10 col-md-9 col-md-offset-1 align-center">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-sm-6 col-md-4">
                            <g:img uri="$user.avatar_url" id="avatar" class="img-rounded img-responsive" alt="Avatar Image" />
                        </div>
                        <div class="col-sm-6 col-md-8">
                            <cite title="Github ID">
                                <h4>
                                    ${user.gitHubId}
                                </h4>
                            </cite>
                            <small>
                                <cite title="Location">${user.location}<i class="glyphicon glyphicon-map-marker"></i>
                                </cite>
                            </small>
                            <p>
                                <i class="glyphicon glyphicon-globe"></i>Public Repos
                                <span class="badge shoppingBadge shoppingBadge-custom">${user.public_repos}</span>
                                <br />
                                <i class="glyphicon glyphicon-user"></i>Bio:<i>${user.bio}</i>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </g:if>
        <g:elseif test="${flash.message}">
            <div class="alert alert-danger" role="alert">
                ${flash.message}
            </div>
        </g:elseif>
    </div>
</div>
</body>
</html>