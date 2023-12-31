//
//  FructusApp.swift
//  Fructus
//
//  Created by Nonato Sousa on 31/08/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboardingActive") var isOnboardingActive: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingActive {
                OnboardingScreen()
            } else {
                FruitListScreen()
            }
        }
    }
}
