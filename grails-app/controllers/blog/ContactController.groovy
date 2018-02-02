package blog

class ContactController {

    def index() {
        render view:"/contact/index"
    }
    def save(Contact contactUs){
        if(contactUs.validate()){
            contactUs.save() (flush: true, failOrError: true)
            flash.message="YO bOB GOT YOUR bACK...eVERYTHIng IS REcORDEd"
        }else{
           flash.message="opps something went wrong bob..."
        }
        redirect action : "index"
    }
}
