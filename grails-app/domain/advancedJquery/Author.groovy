package advancedJquery

class Author {

    String name
    String email
    Date dateOfBirth

    static hasMany = [books: Book]

    static constraints = {
        name(blank: false, nullable: false)
        email(blank: false, nullable: false, email: true, unique: true)
        dateOfBirth(nullable: false)
    }
}
