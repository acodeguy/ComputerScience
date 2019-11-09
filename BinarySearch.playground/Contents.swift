import XCTest

func binarySearch(for needle: Int, in haystack: [Int]) -> Int {

    var lowerBound = 0, upperBound = haystack.count - 1
    var middleIndex = 0

    while lowerBound <= upperBound {
        
        middleIndex = (lowerBound + upperBound) / 2
        let middleElement = haystack[middleIndex]
        
        if middleElement == needle {
         
            return middleIndex
            
        } else if middleElement < needle {
            
            lowerBound = middleIndex + 1
            
        } else if middleElement > needle {
            
            upperBound = middleIndex - 1
        }
    }
    
    return -1
}

class BinarySearchTests: XCTestCase {
       
   func testReturnsPositionOf2InTheHaystack() {
    
        let haystack = [1,3,5,7,9,14,18,99,101].sorted()
        let needle = 5
    
        let actualPosition = binarySearch(for: needle, in: haystack)
        let expectedPosition = 2

       XCTAssertEqual(actualPosition, expectedPosition)
   }
    
    func testReturnsMinusOneWhenNotFound() {
        
        let haystack = [1,3,5,7,9,14,18,99,101].sorted()
        let needle = 5004
    
        let actualPosition = binarySearch(for: needle, in: haystack)
        let expectedPosition = -1

       XCTAssertEqual(actualPosition, expectedPosition)
        
    }
}

BinarySearchTests.defaultTestSuite.run()
