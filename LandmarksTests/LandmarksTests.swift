//
//  LandmarksTests.swift
//  LandmarksTests
//
//  Created by 野田裕介 on 2020/05/09.
//  Copyright © 2020 yusuke.noda. All rights reserved.
//

import XCTest
@testable import Landmarks

class LandmarksTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
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
        let landmarks = try! JSONDecoder().decode([Landmark].self, from: json.data(using: .utf8)!)
        
        XCTAssert(landmarks.count == 2)
        XCTAssert(landmarks[0].id == 1001)
        XCTAssert(landmarks[0].name == "Turtle Rock")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
