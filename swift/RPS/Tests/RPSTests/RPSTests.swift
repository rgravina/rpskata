import XCTest
@testable import RPS

final class RPSTests: XCTestCase {
    func testRockVsPaper() {
        XCTAssertEqual(RPS().play(p1: .rock, p2: .paper), .p2wins)
    }

    func testPaperVsRock() {
        XCTAssertEqual(RPS().play(p1: .paper, p2: .rock), .p1wins)
    }

    func testRockVsScissors() {
        XCTAssertEqual(RPS().play(p1: .rock, p2: .scissors), .p1wins)
    }

    func testScissorsVsRock() {
        XCTAssertEqual(RPS().play(p1: .scissors, p2: .rock), .p2wins)
    }

    func testScissorsVsPaper() {
        XCTAssertEqual(RPS().play(p1: .scissors, p2: .paper), .p1wins)
    }

    func testPaperVsScissors() {
        XCTAssertEqual(RPS().play(p1: .paper, p2: .scissors), .p2wins)
    }

    func testRockVsRock() {
        XCTAssertEqual(RPS().play(p1: .rock, p2: .rock), .draw)
    }

    func testPaperVsPaper() {
        XCTAssertEqual(RPS().play(p1: .paper, p2: .paper), .draw)
    }

    func testScissorsVsScissors() {
        XCTAssertEqual(RPS().play(p1: .scissors, p2: .scissors), .draw)
    }
}
