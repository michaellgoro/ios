//
//  Circleimage.swift
//  Landmarks
//
//  Created by 野田裕介 on 2020/05/09.
//  Copyright © 2020 yusuke.noda. All rights reserved.
//

import SwiftUI

struct Circleimage: View {
    var body: some View {
        Image("titech")
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
        .frame(width: 250, height: 250)
    }
}

struct Circleimage_Previews: PreviewProvider {
    static var previews: some View {
        Circleimage()
    }
}
