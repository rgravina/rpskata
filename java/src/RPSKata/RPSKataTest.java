package RPSKata;

import org.junit.Test;

import static RPSKata.RPS.play;
import static org.junit.Assert.assertTrue;

public class RPSKataTest {
    @Test
    public void wiringTest() {
        assertTrue(play());
    }
}
