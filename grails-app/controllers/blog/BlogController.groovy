package blog

class BlogController {
    def index() {
        render view:"index"
    }
    def list(){
        List<Blog> blogList=Blog.list()
        render view: "index", model: [blogs: blogList]
    }
    def create(){
        List<Author> authorList=Author.list()
        render view: "create", model: [authors: authorList]
    }
    def save(Blog blog){
        if(blog.validate()){
            blog.save flush:true,failOnError:true
            flash.message="Blog Created"
        }else {
            flash.message="Error"
        }
        redirect action:"list"
    }
    def update(Blog eBlog){
        eBlog.dateModified =new Date()
        if(eBlog.validate()){
            eBlog.save flush: true, failOrError: true
            flash.message="Updated"
        }else{
            flash.message="Error. Try again"
        }
        redirect action: "edit",params:[id:eBlog.id]
    }
    def edit(Blog blogEdit){
       List<Author> authorList=Author.list()
        render view:"edit", model:[specificBlog:blogEdit,authors:authorList]
    }
    def detail(Blog detailPost){
        render view: "index", model:[detailPost: detailPost]
    }
}
