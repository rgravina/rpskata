package RPSKata;

import static RPSKata.Result.P1_WINS;
import static RPSKata.Result.P2_WINS;
import static RPSKata.Throw.*;

class RPS {
    static Result play(Throw p1, Throw p2) {
        if (p1 == ROCK) {
            return P1_WINS;
        }

        return P2_WINS;
    }
}
