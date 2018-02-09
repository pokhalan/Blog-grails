package blog

class AuthorController {

    def index() {
        Author author = Author.get(params.id)
        render view: "list"
    }
}