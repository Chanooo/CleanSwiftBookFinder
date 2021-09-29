//
//  bookfinderUITests.swift
//  bookfinderUITests
//
//  Created by CNOO on 2021/09/27.
//

import XCTest

class BookFinderUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    // MARK: - APP UI Test
    func testUI() throws {
        // APP Launch
        let app = XCUIApplication()
        app.launch()
        
        // Search words
        let searchTextField = app.navigationBars.searchFields["searchBarTF"]
        searchTextField.tap()
        searchTextField.typeText("Swift")
        sleep(1)
        
        // tap cell
        app.otherElements["PopoverDismissRegion"].tap()
        app.tables.cells.containing(.staticText, identifier:"Alexander Norman Jeffares").staticTexts["Swift"].tap()
        sleep(2)
        app.navigationBars["Swift"].buttons["Search Books"].tap()
        
        //  Scroll Bottom
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Swift at Moor Park"]/*[[".cells.staticTexts[\"Swift at Moor Park\"]",".staticTexts[\"Swift at Moor Park\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
                        
        XCTAssertTrue(true, "Error")
    }

    // MARK: - Measure Performance (Not USE)
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
