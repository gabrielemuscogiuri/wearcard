package hackaton

class HandshakeController {

    def index() {
        User loggedUser = User.findById(session.user.id)

        List<Handshake> userHandshakes = Handshake.findAllByUser(loggedUser)

        List<BusinessCard> userHandshakesBusinessCards = new LinkedList<>()

        userHandshakes?.each {
            userHandshakesBusinessCards.add(it.card)
        }

        //card che non hanno handshake con loggedUser
        List<BusinessCard> cards = BusinessCard.findAllByIdNotEqualAndIdNotInList(loggedUser.userCard.id, userHandshakesBusinessCards.id)

        [cards: cards]



    }


}
