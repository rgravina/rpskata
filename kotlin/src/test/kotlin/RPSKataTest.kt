import Result.P1_WINS
import Throw.ROCK
import Throw.SCISSORS
import org.junit.jupiter.api.Test
import kotlin.test.assertEquals

class RPSKataTest {
    @Test
    fun rockVsScissors() {
        assertEquals(P1_WINS, play(ROCK, SCISSORS))
    }
}