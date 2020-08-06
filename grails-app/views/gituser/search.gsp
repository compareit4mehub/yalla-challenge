<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'gituser.label', default: 'Gituser')}" />
    <title><g:message code="default.search.label" args="[entityName]" /></title>
    <g:javascript src="application.js"></g:javascript>
    %{-- <script type="application/javascript">
     function searchUserName(userName){
         alert('aaaaaaaaaaaaaa');
     }
     </script>--}%
</head>
<body>
%{-- <a href="#create-gituser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
 <div class="nav" role="navigation">
     <ul>
         <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
         <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
     </ul>
 </div>--}%
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
    <g:form resource="${this.gituser}" method="POST" action="search" controller="gituser">
        <fieldset class="form">
            <f:field bean="gituser" property="name" label="name" />
        </fieldset>
        <fieldset class="buttons">
            <input class="save" type="button" onclick="searchUserName()" value="${message(code: 'default.button.search.label', default: 'Search')}" />
        </fieldset>
    </g:form>

    <div id="show-gituser" class="content scaffold-show" role="main">
        <h1><g:message code="default.show.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    %{--<f:display bean="gituser" />--}%
        <label>Github Id :</label><input type="text"  id="id-label">
        <label>Location :</label><input type="text" disabled  id="location-label">
        <label>Bio Id :</label><input type="text" disabled  id="bio-label">
        <label>Public Repo :</label><input type="text"  id="publicrepo-label">
        <div class="message" role="status">
            <label>Avatar Image :</label><img src="" id="avatar-image">
        </div>


    </div>
</div>
</body>
</html>
