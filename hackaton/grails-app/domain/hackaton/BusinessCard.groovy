package hackaton

class BusinessCard {

    String name
    String surname
    String email
    String image
    int phoneNumber
    String address
    User owner
    Boolean favourite = false
    Date timestamp
    String bio

    static hasMany = [social : Social]

    static constraints =
            {
                email(email:true)
            }
}
