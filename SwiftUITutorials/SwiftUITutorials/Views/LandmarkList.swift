//
//  LandmarkList.swift
//  SwiftUITutorials
//
//  Created by Acyco on 2022/05/26.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List{
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
//        List (landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//
//        }
        
        NavigationView {
                   List(landmarks) { landmark in
                       NavigationLink {
                                          LandmarkDetail(landmark: landmark)
                                      } label: {
                                          LandmarkRow(landmark: landmark)
                                      }
                   }
                   .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 13 mini"], id: \.self) { deviceName in
                  LandmarkList()
                      .previewDevice(PreviewDevice(rawValue: deviceName))
                      .previewDisplayName(deviceName)
              }
        
    }
}
