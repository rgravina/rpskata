enum Throw {
    case rock, paper, scissors
}

enum GameResult {
    case p1wins, p2wins, draw
}

public struct RPS {
    func play(p1: Throw, p2: Throw) -> GameResult {
        if (p1 == p2) {
            return .draw
        }

        if  (p1 == .rock && p2 == .paper) ||
            (p1 == .paper && p2 == .scissors) ||
            (p1 == .scissors && p2 == .rock) {
            return .p2wins
        }

        return .p1wins
    }
}
