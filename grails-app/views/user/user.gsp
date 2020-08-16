<%--
  Created by IntelliJ IDEA.
  User: aidev
  Date: 08/08/2020
  Time: 12:33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Users</title>
</head>

<body>
<g:if test="${user}">
    <g:img uri="${user.avatar_url}"/>
    USER NAME:<g:textField name="title" value="${user.userName}" />
    LOCATION:<g:textField name="title" value="${user.location}" />
    BIO:<g:textField name="title" value="${user.bio}" />
    GIT ID:<g:textField name="title" value="${user.gitHubId}" />
    REPO NOS:<g:textField name="title" value="${user.public_repos}" />
%{--    <h1>${user[0].userName}</h1>--}%
%{--    <h1>${user[0].location}</h1>--}%
%{--    <h1>${user[0].bio}</h1>--}%
</g:if>
</body>
</html>