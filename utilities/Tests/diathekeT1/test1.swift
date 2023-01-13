import XCTest
@testable import diatheke



final class test1: XCTestCase {
    func testExample() throws {
        // The test attempts to run swift argument parser for variables approximately similar to diatheke.
        // results.
        let d = diatheke.parseOrExit()
        // Use XCTAssert might verify your tests produce the correct
        //XCTAssertEqual(theStruct.parseOrExit(), "Hello, World!")
    }
}
