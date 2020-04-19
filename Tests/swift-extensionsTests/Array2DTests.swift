@testable import swift_extensions
import XCTest

final class Array2dTests: XCTestCase {
    func testInit() {
        let sut = Array2D(columns: 3, rows: 3, initialValue: 0)
        for i in 0 ..< 3 {
            for j in 0 ..< 3 {
                XCTAssertEqual(sut[i, j], 0)
            }
        }
    }

    func testGetRow() {
        var sut = Array2D(columns: 3, rows: 3, initialValue: 0)
        sut[0, 0] = 1
        sut[0, 1] = 2
        sut[0, 2] = 3

        XCTAssertEqual(sut[.row(0)], [1, 2, 3])
    }

    func testGetColumn() {
        var sut = Array2D(columns: 3, rows: 3, initialValue: 0)
        sut[0, 0] = 1
        sut[1, 0] = 2
        sut[2, 0] = 3

        XCTAssertEqual(sut[.column(0)], [1, 2, 3])
    }

    func testSetRow() {
        var sut = Array2D(columns: 3, rows: 3, initialValue: 0)

        sut[.row(0)] = [1, 2, 3]

        XCTAssertEqual(sut[.row(0)], [1, 2, 3])
    }

    func testSetColumn() {
        var sut = Array2D(columns: 3, rows: 3, initialValue: 0)

        sut[.column(0)] = [1, 2, 3]

        XCTAssertEqual(sut[.column(0)], [1, 2, 3])
    }

    func testGetArray() {
        let sut = Array2D(columns: 2, rows: 2, initialValue: 0)

        XCTAssertEqual(sut.getArray(), [0, 0, 0, 0])
    }
}
