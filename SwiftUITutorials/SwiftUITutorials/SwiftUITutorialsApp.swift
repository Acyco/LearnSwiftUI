//
//  SwiftUITutorialsApp.swift
//  SwiftUITutorials
//
//  Created by Acyco on 2022/05/26.
//

import SwiftUI

@main
struct SwiftUITutorialsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
