//
//  Landmark.swift
//  SwiftUITutorials
//
//  Created by Acyco on 2022/05/26.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    
    private var coordinates: Coordinates

        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
    
}

