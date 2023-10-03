//
//  ConfirmPopupView.swift
//  Fructus
//
//  Created by Nonato Sousa on 26/09/23.
//

import SwiftUI

struct ConfirmPopupView: View {
    var onYesPressed: (() -> Void)
    var onNoPressed: (() -> Void)
    var onClosePressed: (() -> Void)
    
    let generator = UINotificationFeedbackGenerator()
    
    func successHaptic(){
        generator.notificationOccurred(.success)
    }
    
    func failHaptic(){
        generator.notificationOccurred(.error)
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.blue)
                .padding()
                .frame(height: 300)
                .overlay(
                    Button(action: {
                        onClosePressed()
                        failHaptic()
                        print("close pressed!")
                    }, label: {
                        Text("Close")
                    })
                    .offset(x: -40, y: 40),
                    alignment: .topTrailing
                )
            VStack (spacing: 20) {
                Text("Are you sure?")
                
                HStack (spacing: 20){
                    Button {
                        onYesPressed()
                        successHaptic()
                    } label: {
                        Text("Yes")
                    }
                    
                    Button {
                        onNoPressed()
                        failHaptic()
                    } label: {
                        Text("No")
                    }
                    
                }
            }
        }
    }
}

struct ConfirmPopupView_Previews: PreviewProvider {
    static func onYesPressed(){}
    static func onNoPressed(){ }
    static func onClosePressed(){ }
    
    static var previews: some View {
        ConfirmPopupView(onYesPressed: onYesPressed, onNoPressed: onNoPressed, onClosePressed: onClosePressed)
    }
}
