<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails Sample</title>
</head>
<body>

<div class="svg" role="presentation">
    <div class="grails-logo-container">
        <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
    </div>
</div>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Welcome to Github Services</h1>

        <div id="controllers" role="navigation">
            <h2>Available Services</h2>
            <ul>
                <li class="controller">
                    <g:link controller="gituser" action="search">Search Github Users</g:link>
                </li>

            </ul>
        </div>
    </section>
</div>

</body>
</html>
