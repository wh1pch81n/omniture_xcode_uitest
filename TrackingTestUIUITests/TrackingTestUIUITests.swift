//
//  TrackingTestUIUITests.swift
//  TrackingTestUIUITests
//
//  Created by Derrick Ho on 6/7/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import XCTest
@testable import TrackingTestUI

class TrackingTestUIUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        var count = 0
        XCTAssertTrue(
            XCUIApplication()
                .staticTexts["omniture_uitest_\(count)" + Omniture(mode: .pagename, name: "ViewController").description]
                .exists
        )
        count += 1
        
        XCUIApplication().navigationBars.buttons["Item"].tap()
        
        XCTAssertTrue(
            XCUIApplication()
                .staticTexts["omniture_uitest_\(count)" + Omniture(mode: .pagename, name: "ViewController").description]
                .exists
        )
        count += 1
        
        XCUIApplication().navigationBars.buttons.element(boundBy: 0).tap()

        XCTAssertTrue(
            XCUIApplication()
                .staticTexts["omniture_uitest_\(count)" + Omniture(mode: .pagename, name: "ViewController").description]
                .exists
        )
        count += 1
        
                
    }
    
}
