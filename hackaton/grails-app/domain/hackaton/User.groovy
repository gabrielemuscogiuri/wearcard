package hackaton
/**
 * Created by michele on 14/11/15.
 */
class User {

    String username
    String password
    BusinessCard userCard

    static constraints =
            {
                username unique: true
                password(blank:false, password:true)
                userCard nullable: true
            }

}
