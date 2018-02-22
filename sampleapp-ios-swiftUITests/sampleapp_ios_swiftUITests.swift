
import XCTest
import AppCenterXCUITestExtensions
import UIKit



class sampleapp_ios_swiftUITests: XCTestCase {
    let app = ACTLaunch.launch(XCUIApplication())!
    override func setUp() {
        super.setUp()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSwipeUntilCrashesPage() {
        // Assert that the crash button exists
        let window = app.windows.element(boundBy: 0)
        let readyButtonQuery = app.buttons.matching(identifier: "ready")
        let buttonCount = app.buttons.count
        XCTAssertEqual(buttonCount, 1)
    }
}
