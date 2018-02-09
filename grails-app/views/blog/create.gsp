<%@ page import="blog.Blog" %>
<!<html>
<head>
    <meta name="layout" content="site"/>
    <title>
        <g:if test="${specificBlog}">
            Update Blog
        </g:if><g:else>
            Create your Blog
        </g:else>
    </title>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="form">
            </div>
            <table class="table">
                <g:if test="${flash.Message}">
                    <div class="alert alert-info" role="alert">${flash.Message}</div>
                </g:if>
                <g:form controller="blog" action="save">
                    <div class="form-group">
                        <label for="AuthorList">select Author</label>
                        <select name="author.id" class="form-control" id="AuthorList">
                            <g:each in="${authors}" var="author">
                                <option value="$author.id">${author.firstName+" "+author.lastName}</option>
                            </g:each>
                        </select>
                        <label>Author name</label>
                        <input type="text" class="form-control" name=" Name">
                        <label>Email</label>
                        <input type="email" class="form-control" name="Email">
                        <label>Title</label>
                        <input type="text" class="form-control" name="title" placeholder="text">
                        <label>Message:</label>
                        <input type="message" class="form-control" name="blog" placeholder=" ">

                    </div>

                    <button type="submit" class="btn btn-default">Submit</button>
                </g:form>
            </table>
        </div>
    </div>
</div>
</body>
</html>