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
    <g:img uri="${user[0].userImage}"/>
    USER NAME:<g:textField name="title" value="${user[0].userName}" />
    LOCATION:<g:textField name="title" value="${user[0].location}" />
    BIO:<g:textField name="title" value="${user[0].bio}" />
    GIT ID:<g:textField name="title" value="${user[0].gitId}" />
    REPO NOS:<g:textField name="title" value="${user[0].norepos}" />
%{--    <h1>${user[0].userName}</h1>--}%
%{--    <h1>${user[0].location}</h1>--}%
%{--    <h1>${user[0].bio}</h1>--}%
</g:if>
</body>
</html>