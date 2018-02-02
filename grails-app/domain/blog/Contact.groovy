package blog

class Contact {

    String firstName
    String lastName
    String email
    String message

    Date dateCreated
    static constraints = {
        firstName nullable: false
        lastName nullable: false
        email nullable: false
        message nullable: false
        dateCreated nullable: true

    }
}
