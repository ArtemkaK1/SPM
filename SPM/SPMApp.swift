//
//  SPMApp.swift
//  SPM
//
//  Created by Artemiy Kirillov on 27.04.2022.
//

import SwiftUI
import Firebase

@main
struct SPMApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
