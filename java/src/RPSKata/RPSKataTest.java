package RPSKata;

import static RPSKata.RPS.*;
import static RPSKata.Result.*;
import static RPSKata.Throw.ROCK;
import static RPSKata.Throw.SCISSORS;
import static org.junit.Assert.assertEquals;

import org.junit.Test;
public class RPSKataTest {
    @Test
    public void rockVsScissors() {
        assertEquals(P1_WINS, play(ROCK, SCISSORS));
    }

    @Test
    public void scissorsVsRock() {
        assertEquals(P2_WINS, play(SCISSORS, ROCK));
    }
}
