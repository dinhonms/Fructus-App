//
//  StartButtonView.swift
//  Fructus
//
//  Created by Nonato Sousa on 31/08/23.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboardingActive") var isOnboardingActive = false
    
    var body: some View {
        Button {
            isOnboardingActive = false
        } label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
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
