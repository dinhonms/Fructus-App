//
//  ContentView.swift
//  Fructus
//
//  Created by Nonato Sousa on 31/08/23.
//

import SwiftUI

struct FruitListScreen: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @AppStorage("isOnboardingActive") var isOnboardingActive = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List(fruits.shuffled()){ item in
                NavigationLink(destination: FruitDetailScreen(fruit: item)){
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListScreen()
    }
}
