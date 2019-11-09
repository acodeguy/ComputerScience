import Foundation
import XCTest

func linearSearch(for num: Int, in array: [Int]) -> Int {

    var pos: Int = -1

    for item in array {

        pos += 1

        if item == num {
            return pos
        }
    }

    return pos
}

class LinearSearchTests: XCTestCase {

    func testLinearSearch() {

        let values = [10,3,76,89,34,56,59,100,34453]
        let indexOf76 = linearSearch(for: 76, in: values)

        XCTAssertEqual(indexOf76, 2)
    }
}

LinearSearchTests.defaultTestSuite.run()
