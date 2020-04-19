@testable import swift_extensions
import XCTest

final class UIColorInterpolationTests: XCTestCase {
    func testArray() {
        let sut = UIColor.interpolate(from: .red, to: .blue, steps: 5)
        XCTAssertEqual(sut.count, 5)
    }
}
