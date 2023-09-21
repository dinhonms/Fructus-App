//
//  FruitHeadView.swift
//  Fructus
//
//  Created by Nonato Sousa on 21/09/23.
//

import SwiftUI

struct FruitHeadView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    @State private var isAnimating = false
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.2)) {
                isAnimating = true
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitHeadView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeadView(fruit: fruitsData[0])
    }
}
