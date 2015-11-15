package hackaton

class BusinessCard {

    String name
    String surname
    String email
    String company
    String role
    String image
    String phoneNumber
    String address
    Date timestamp
    String bio
    String linkedin

    static constraints =
            {
                email(email:true)
                name nullable: true
                surname nullable: true
                email nullable: true
                company nullable: true
                role nullable: true
                image nullable: true
                phoneNumber nullable: true
                address nullable: true
                timestamp nullable: true
                bio nullable: true
                linkedin nullable: true
            }



}

