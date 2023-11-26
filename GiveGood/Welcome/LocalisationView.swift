//
//  LocalisationView.swift
//  Ratatouille
//
//  Created by Hamza  on 22/09/2023.
//

import SwiftUI
import MapKit

struct LocalisationView: View {
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    @State var tracking: MapUserTrackingMode = .follow
    @State var searchText = ""

    var body: some View {
        NavigationView {
            ZStack {
                Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: $tracking)
                    .overlay(
                        Circle()
                            .stroke(Color.blue, lineWidth: 5)
                            .frame(width: 400, height: 400)
                    )
                    .mask(
                        Circle()
                            .frame(width: 400, height: 400)
                    )
            }
            .searchable(text: $searchText)
        }
    }
}

struct LocalisationView_Previews: PreviewProvider {
    static var previews: some View {
        LocalisationView()
    }
}



