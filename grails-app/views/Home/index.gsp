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
        <g:link class="tcb-nav-menu tcb-primary active"  role="button" aria-haspopup="false" aria-expanded="false" controller="Home" action="index">Home</g:link>
    </li>
    <li class="dropdown">
        <g:link class="tcb-nav-menu tcb-primary"  role="button" aria-haspopup="false" aria-expanded="false" controller="GithubUsers" action="index">Search</g:link>
    </li>
    <li class="dropdown">
        <g:link class="tcb-nav-menu tcb-primary"  role="button" aria-haspopup="false" aria-expanded="false" controller="GithubUsers" action="loadLocalUser">Saved Users</g:link>
    </li>
</content>
<!-- Nav content End -->

<!-- Header Start -->
<header class="header bg-img" id="header">
    <div class="container sec-spacer text-center">
        <h1>How It Works</h1>
        <h3>Search github account</h3>
    </div>
</header>
<!-- Header End -->


<!-- How It Works Start -->
<section class="sec-spacer first-color">
    <div class="container container-center">
        <div class="row">
            <div class="col-md-4">
                <h3 class="title">Expected Behaviour</h3>
            </div>
            <div class="col-md-8">
                <ul class="tc-list tc-list-background">
                    <li><a href="#"><i class="fa fa-arrow-circle-o-right"></i> The frontend should send the requested account name to the backend</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-o-right"></i> The backend should check a local cache/database if we already have results for this account</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-o-right"></i> If not, the backend will call the github api https://api.github.com/users/user_name (e.g. https://api.github.com/users/facebook), and store the results in a local cache/database.</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-o-right"></i> The backend will return the results from the database to the frontend</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-o-right"></i> The frontend will display the results accordingly</a></li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!-- How It Works End -->

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