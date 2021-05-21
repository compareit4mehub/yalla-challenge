<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <g:layoutHead/>
</head>

<body>
<div class="main-container">
    <nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation" id="nav">
        <a class="navbar-brand" href="/#">
            <asset:image src="apple-touch-icon-retina.png" class="logo" alt="Grails Logo"/>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent"
                aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
            <ul class="nav navbar-nav ml-auto">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                    <a class="nav-link" href="/searchUser/">Search</a>
                </div>
            </ul>
        </div>

    </nav>

    <!-- Main Start -->
    <main class="site-content">
        <g:layoutBody/>
    </main>
    <!-- Main End -->


    <footer>
        <p>Created by: Saddam Mughal</a></p>
        <div id="contact">
            <a href="https://www.linkedin.com/in/saddammughal" target="_blank"><i style="font-size:24px" class="fa fa-linkedin-square"></i></a>
            <a href="https://github.com/5addam" target="_blank"><i style="font-size:24px" class="fa fa-github-square"></i></a>
        </div>
    </footer>
    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>
</div>
</body>
</html>
