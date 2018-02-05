package blog

class HomeController {

    def index() {
        render (view:"index")
    }
    def aboutus(){
        render (view: "aboutus")
    }
    def blogpost(){
        render(view:"blogpost")
    }
    def home(){
        render(view:"index")
    }
    def contactus(){
        render(view:"../contact/index")
    }
}
