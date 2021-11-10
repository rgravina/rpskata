import XCTest
@testable import RPS

final class RPSTests: XCTestCase {
    func testWiring() {
        XCTAssertTrue(RPS().play())
    }
}
