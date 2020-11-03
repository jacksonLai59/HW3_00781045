//
//  map.swift
//  HW3_00781045
//
//  Created by User07 on 2020/11/3.
//

import SwiftUI
import MapKit

struct map: View {
    @Binding var showMapPage: Bool
    //台北
    @State private var region1 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.1667, longitude: 121.5667), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    //台中
    @State private var region2 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.1667, longitude: 120.6833), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    //台南
    @State private var region3 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 23.000, longitude: 120.200), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        let place = [$region1, $region2, $region3]
        let randomPlace = place.randomElement()!
        VStack {
            Text("故事發生地點！").font(.title).foregroundColor(.white).offset(x:5, y:5)
            Spacer()
            Map(coordinateRegion: randomPlace)
        }.background(Color(red: 5/255, green: 41/255, blue: 89/255))
    }
}

struct map_Previews: PreviewProvider {
    static var previews: some View {
        map(showMapPage: .constant(true))
    }
}
