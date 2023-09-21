//
//  OnboardingView.swift
//  Fructus
//
//  Created by Nonato Sousa on 31/08/23.
//

import SwiftUI

struct OnboardingScreen: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0..<4]) { item in
                FruitCardView(fruit: item)
            }
        }//TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
