<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'gituser.label', default: 'Gituser')}" />
    <title><g:message code="default.search.label" args="[entityName]" /></title>
    <g:javascript src="application.js"></g:javascript>
</head>
<body>
<div id="create-gituser" class="content scaffold-create" role="main">
    <h1><g:message code="default.search.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.gituser}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.gituser}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form resource="${this.gituser}" method="POST" controller="gituser">
        <fieldset class="form">
            <f:field bean="gituser" property="name" label="Name" required="true"  />
        </fieldset>
        <fieldset class="buttons">
            <input class="save" type="button" onclick="searchUserName();" value="${message(code: 'default.button.search.label', default: 'Search')}" />
        </fieldset>
    </g:form>

    <div id="show-gituser" class="content scaffold-show" role="main">
        <h1><g:message code="default.show.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    %{--<f:display bean="gituser" />--}%
        <label>Github Id :</label><input type="text"  id="id-label">
        <label>Location :</label><input type="text" disabled  id="location-label" title="">
        <label>Bio Id :</label><textarea disabled  id="bio-label"></textarea>
        <label>Public Repo :</label><input type="text"  id="publicrepo-label">
        <div class="message" role="status">
            <label>Avatar Image :</label><img src="" id="avatar-image">
        </div>


    </div>
</div>
</body>
</html>
