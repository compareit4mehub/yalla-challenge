<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>
<body >

<!-- Nav content Start -->
<content tag="nav" class="tc-link-effect2 text-right">
    <li class="dropdown">
        <g:link class="tcb-nav-menu tcb-primary"  role="button" aria-haspopup="false" aria-expanded="false" controller="Home" action="index">Home</g:link>
    </li>
    <li class="dropdown">
        <g:link class="tcb-nav-menu tcb-primary active"  role="button" aria-haspopup="false" aria-expanded="false" controller="GithubUsers" action="index">Search</g:link>
    </li>
    <li class="dropdown">
        <g:link class="tcb-nav-menu tcb-primary"  role="button" aria-haspopup="false" aria-expanded="false" controller="GithubUsers" action="loadLocalUser">Saved Users</g:link>
    </li>

</content>
<!-- Nav content End -->



<!-- Header Start -->
<header class="header sec-color bg-img2" id="header" >
    <div class="container sec-spacer text-center">
        <h1>Search github account</h1>
        <h3>By username</h3>
    </div>
</header>
<!-- Header End -->

<!-- Search form Start -->
<section class="sec-spacer">
    <div class="container container-center">
        <div class="tc-calltoaction cta-align-center">
            <div class="cta-content">
                <h3 class="title text-center">Enter Github Account Username</h3>
                <g:if test="${flash.message}">
                    <div class="tc-note-style1 tc-note-danger">
                        <div class="note-icon">
                            <i class="fa fa-remove"></i>
                        </div>
                        <div class="note-desc">
                            <p>${flash.message}</p>
                        </div>
                    </div>
                </g:if>
                <div class="cta-desc">
                    <g:form controller="GithubUsers" class="tc-form-style1">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-field">
                                    <g:textField class="form-control" placeholder="User Name" name="userName" value="${userName}" required="true" autofocus="true"></g:textField>
                                </div>
                            </div>
                        </div>
                        <div class="form-button">
                            <g:actionSubmit class="button" value="Search" action="findUser"/>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Search form End -->

<!-- Social Share -->
<section class="sec-spacer sec-color">
    <div class="container container-center">
        <h3 class="title text-center"> We Are Social </h3>
        <div class="tc-social-share social-animation-top text-center tc-social-small">
            <a href="#1"><i class="social-icon fa fa-facebook"></i></a>
            <a href="#1"><i class="social-icon fa fa-twitter"></i></a>
            <a href="#1"><i class="social-icon fa fa-google-plus"></i></a>
            <a href="#1"><i class="social-icon fa fa-dribbble"></i></a>
            <a href="#1"><i class="social-icon fa fa-linkedin"></i></a>
            <a href="#1"><i class="social-icon fa fa-instagram"></i></a>
            <a href="#1"><i class="social-icon fa fa-pinterest"></i></a>
            <a href="#1"><i class="social-icon fa fa-github"></i></a>
            <a href="#1"><i class="social-icon fa fa-flickr"></i></a>
            <a href="#1"><i class="social-icon fa fa-vk"></i></a>
        </div>
    </div>
</section>
<!-- Social Share -->


</body>
</html>