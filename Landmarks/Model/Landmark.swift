//
//  Landmark.swift
//  Landmarks
//
//  Created by 野田裕介 on 2020/05/17.
//  Copyright © 2020 yusuke.noda. All rights reserved.
//

import Foundation

struct Landmark: Decodable {
    struct Coordinates:Decodable {
        let longitude: Double
        let latitude : Double
    }
    
    let id: Int
    let name: String
    let state: String
    let park: String
    let coordinates: Coordinates
    let imageName: String
}
