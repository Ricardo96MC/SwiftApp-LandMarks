//
//  LandMarksList.swift
//  Landmarks
//
//  Created by Ricardo Gonzalez on 9/22/22.
//

import SwiftUI

struct LandMarksList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandMarkDetail(landmark: landmark)
                } label: {
                    LandMarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandMarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarksList()
            ForEach(["iPhone SE (2nd generation", "iPhone XS Max"], id: \.self) { deviceName in LandMarksList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
            }
    }
}
