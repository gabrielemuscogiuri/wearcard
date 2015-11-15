package hackaton

class DashboardController {

    def index() {
        List<Handshake> handshakes = Handshake.findAllByUser(session.user)


        List<Handshake> lastHandshakes = handshakes.size() > 4 ? (handshakes.reverse(true)).subList(0,4) : handshakes

        List<Handshake> favouritesHandshakes = handshakes.each {
            it.favourite == true
        }

        [handshakes: handshakes, lastHandshakes: lastHandshakes, favouritesHandshakes:favouritesHandshakes]
    }
}
