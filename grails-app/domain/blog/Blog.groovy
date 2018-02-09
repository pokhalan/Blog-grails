package blog

class Blog {
    String title
    String content
    Author author
    Date dateCreated=new Date()
    Date dateModified=new Date()

    static constraints = {
        dateCreated nullable: true
        dateModified nullable: true
    }
}
