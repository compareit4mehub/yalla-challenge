<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="list-user" class="content scaffold-list margin 10" role="main">
            <h1><g:message code="Search User" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div style="margin-left: 25px;float:left;width:50%;">
                <g:form name="name" class="content">
                    Name: <g:textField name="name" />
                    <g:actionSubmit value="Search" action="retrieve_from_db"/> 
                </g:form>
            <div/>

            
        </div>
    </body>
</html>