package hackaton
/**
 * Created by michele on 14/11/15.
 */
class User {

    String username
    String password

    static hasMany = [businessCards : BusinessCard]

    static constraints =
            {
                password(blank:false, password:true)
            }

}
