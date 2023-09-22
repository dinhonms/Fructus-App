//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Nonato Sousa on 22/09/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutricional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self){ index in
                    Divider()
                        .padding(.vertical, 2)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
    }
}
