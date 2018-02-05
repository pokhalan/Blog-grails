<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="site"/>
    <title>Blog</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <asset:stylesheet src="bootstrap.css"/>
</head>

<body>
<div class="container">
    <g:link action="create" controller="blog">Create a Blog!</g:link>
    <table class="table">
        <tr class="">
            <th class="bg-primary">Title</th>
            <th class="bg-info">Content</th>
        </tr>
        <g:each var="b" in="${blogList}">
            <tr >
                <td class="bg-success">${b.title}</td>
                <td class="bg-warning">${b.content}</td>
            </tr>
            <br/>
        </g:each>
    </table>
</div>
</body>
</html>