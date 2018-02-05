package blog

class BlogController {
    def index() {
        render view:"index"
    }
    def list(){
        List<Blog> blogList=Blog.list()
        render view: "index", model: [blogList: blogList]
    }
    def create(){
        render view:"create"
    }
    def save(Blog blog){
        blog.dateCreated=new Date()
        blog.dateModified=new Date()
        if(blog.validate()){

            blog.save flush:true,failOnError:true
        }else {
            redirect action:"update"
        }
        redirect action:"list"
    }
    def update(Blog blog){
        blog.dateModified =new Date()
        if(blog.validate()){
            blog.save()
            flash.message="Updated"
            redirect action: "index"
        }else{
            flash.message="Error. Try again"
            redirect action: "edit"
        }
    }
    def edit(){
        Blog blog=Blog.get(params.id)
        render view:"create", model:[specificBlog:blog]
    }
    def detail(){
        Blog blog =Blog.get(params.id)
        render view: "index", model:[specificBlog: blog]
    }
}
