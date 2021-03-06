<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><g:layoutTitle default="My Blog!"/> </title>
    <asset:stylesheet src="bootstrap.css"/>
</head>

<body>

<div class="container-fluid">
    <div class="navbar navbar-default" role="navigation"
         style="background:transparent url('http://www.cianellistudios.com/blog/wp-content/uploads/2009/11/abstract-paintings-splash.jpg') no-repeat center center /cover" class="img img-responsive" >
        <div class="navbar_header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <span class="navbar-brand" style="font-family: 'cursive';color: #062c33;font-size: 3em">Alankar's Website</span>
        </div>
        <!-- navbar-->
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
               <li><g:link controller="home" action="index">Home</g:link> </li>
                <li><g:link controller="home" action="aboutus">About</g:link> </li>
                <li><g:link controller="blog" action="index">Blog</g:link> </li>
                <li><g:link controller="contact" action="index">Home</g:link> </li>
            </ul>
        </div>
    </div>
</div>

<g:layoutBody/>

<footer class="sticky-footer" role="contentinfo" style="
position: fixed;
z-index: 1000;
right: 0;
bottom: 0;
width: 100%;
height: 56px;
background-color: #e9ecef;
line-height: 55px;">
    <div class="text-center">Copyright © 2018 Alankar Pokhrel!</div>
</footer>
<asset:javascript src="jquery-2.2.0.min.js"/>
<asset:javascript src="bootstrap.js"/>
</body>
</html>