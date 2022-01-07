fun play(p1: Throw, p2: Throw): Result {
    return Result.P1_WINS
}

enum class Throw {
    ROCK, PAPER, SCISSORS
}

enum class Result {
    P1_WINS, P2_WINS, TIE
}
