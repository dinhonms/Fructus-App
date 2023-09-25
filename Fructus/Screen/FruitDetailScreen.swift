//
//  FruitDetailScreen.swift
//  Fructus
//
//  Created by Nonato Sousa on 19/09/23.
//

import SwiftUI

struct FruitDetailScreen: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    @State private var isAnimating = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            VStack {
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(alignment: .center, spacing: 20) {
                        VStack(alignment: .center, spacing: 20) {
                            //HEADER
                            FruitHeadView(fruit: fruit)
                                .ignoresSafeArea()
                            //                    .offset(y: isAnimating ? -100 : 0)
                            //                    .scaleEffect(isAnimating ? 0.9 : 1)
                            //TITLE
                            Text(fruit.title)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(fruit.gradientColors[0])
                            
                            //HEADLINE
                            Text(fruit.headline)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                            
                            //NUTRIENTS
                            FruitNutrientsView(fruit: fruit)
                            
                            //SUBHEADLINE
                            Text("Learn more about \(fruit.title)".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(fruit.gradientColors[1])
                            
                            //DESCRIPTION
                            Text(fruit.description)
                                .multilineTextAlignment(.leading)
                            
                            //LINK
                            SourceLinkView()
                                .padding(.top, 10)
                                .padding(.bottom, 40)
                        }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: 640, alignment: .center)
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar(.hidden)
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailScreen(fruit: fruitsData[0])
    }
}
