package hackaton

class BusinessCard {

    String name
    String surname
    String email
    String image
    String phoneNumber
    String address
    User owner
    Boolean favourite = false
    Date timestamp
    String bio

    static hasMany = [social : Social]

    static constraints =
            {
                email(email:true)
                name nullable: true
                surname nullable: true
                email nullable: true
                image nullable: true
                phoneNumber nullable: true
                address nullable: true
                owner nullable: true
                favourite nullable: true
                timestamp nullable: true
                bio nullable: true
            }
}
