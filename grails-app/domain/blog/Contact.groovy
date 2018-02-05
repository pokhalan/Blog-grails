package blog

class Contact {

    String firstName
    String lastName
    String email
    String message

    Date dateCreated
    static constraints = {
        firstName nullable: true
        lastName nullable: true
        message nullable: true
        dateCreated nullable: true

    }
}
