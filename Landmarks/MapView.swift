//
//  MapView.swift
//  Landmarks
//
//  Created by 野田裕介 on 2020/05/09.
//  Copyright © 2020 yusuke.noda. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 35.6051229, longitude: 139.6813415)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    typealias UIViewType = MKMapView
    
   
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
