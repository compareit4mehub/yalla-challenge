<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Users</title>
</head>
<body>
%{--<g:each in="${user}" var="user" status="i">--}%
%{--    <h3>${i+1}. ${user.userName}, ${user.lastName}</h3>--}%
%{--    <br/>--}%
%{--</g:each>--}%
<g:form controller="user" action="searchResults">
    <h1>Please enter 'aleena4249' or 'aleena4247' to test the results</h1>
    User Name: <g:textField name="name" value="${name}" />
    <g:submitButton name="submit" value="Search" />
</g:form>
%{--<g:if test="${user}">--}%
%{--    <h1>${user[0].userName}</h1>--}%
%{--</g:if>--}%
</body>
</html>