package hackaton

class BusinessCard {

    String name
    String surname
    String email
    int phoneNumber
    String address


    static hasMany = [social : Social]

    static constraints =
            {
                email(email:true)
            }
}
