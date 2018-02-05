<%@ page import="blog.Blog" %>
<!<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
            <h1>
                <g:if test="${specificBlog}">
                    Update Blog
                </g:if><g:else>
                    Create Blog
                </g:else>
            </h1>
            <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">
                ${flash.message}
            </div>
            </g:if>
            <%
                Blog blogs=new Blog()
                String action
            %>
            <g:if test="${specificBlog}">
                <%
                    blogs = specificBlog
                    action = "update"
                %>
            </g:if>
            <g:else>
                <%
                    blogs.title = ""
                    blogs.authorName = ""
                    blogs.content = ""
                    action = "save"
                %>
            </g:else>

            <g:form controller="blog" action="${action}">
                <div class="form-group">
                    <label for=>Blog Title</label>
                    <input type="text" class="form-control" placeholder="Blog Title" name="title"
                           value="${blogs.title}">
                </div>

                <div class="form-group">
                    <label>Author</label>
                    <input type="text" class="form-control" placeholder="Mr.Blog Writer" name="authorName"
                           value="${blogs.authorName}">
                </div>

                <div class="form-group">
                    <label>Blog Content</label>
                    <textarea class="form-control" rows="5" placeholder="Blog Content Here"
                              name="content">${blogs.content}</textarea>
                </div>
                <g:if test="${specificBlog}">
                    <g:hiddenField name="id" value="${specificBlog.id}"/>
                </g:if>
                <button href="" type="submit" class="btn btn-primary">Submit</button>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>