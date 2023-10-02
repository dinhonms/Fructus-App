//
//  StartButtonView.swift
//  Fructus
//
//  Created by Nonato Sousa on 31/08/23.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboardingActive") var isOnboardingActive = false
    @State var buttonText = "Start"
    @State var showButtonImage = true
    
    var body: some View {
        Button {
            isOnboardingActive = false
        } label: {
            HStack {
                Text(buttonText)
                
                if showButtonImage{
                    Image(systemName: "arrow.right.circle")
                                        .imageScale(.large)
                }                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: showButtonImage ? 1.25 : 0)
            )
        }
        .foregroundColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
