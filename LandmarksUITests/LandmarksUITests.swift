//
//  LandmarksUITests.swift
//  LandmarksUITests
//
//  Created by 野田裕介 on 2020/05/09.
//  Copyright © 2020 yusuke.noda. All rights reserved.
//

import XCTest

class LandmarksUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let json = #"""
        [
        {
            "name": "Turtle Rock",
            "category": "Featured",
            "city": "Twentynine Palms",
            "state": "California",
            "id": 1001,
            "park": "Joshua Tree National Park",
            "coordinates": {
                "longitude": -116.166868,
                "latitude": 34.011286
            },
            "imageName": "turtlerock"
        },
        {
            "name": "Silver Salmon Creek",
            "category": "Lakes",
            "city": "Port Alsworth",
            "state": "Alaska",
            "id": 1002,
            "park": "Lake Clark National Park and Preserve",
            "coordinates": {
                "longitude": -152.665167,
                "latitude": 59.980167
            },
            "imageName": "silversalmoncreek"
        }
        ]
        """#
        let landmarks = try! JSONDecoder().decode([Landmark].self, from: json.data(using: .utf8))
        
        XCTAssert(landmarks.count == 2)
        XCTAssert(landmarks[0].id == 1001)
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
