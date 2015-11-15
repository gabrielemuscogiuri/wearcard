package hackaton

class DashboardController {

    def index() {
        List<Handshake> handshakes = Handshake.findAllByUser(session.user)


        List<Handshake> lastHandshakes = handshakes.size() > 4 ? handshakes.subList(0,4) : handshakes

        [handshakes: handshakes, lastHandshakes: lastHandshakes]
    }
}
