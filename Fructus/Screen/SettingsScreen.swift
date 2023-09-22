//
//  SettingsScreen.swift
//  Fructus
//
//  Created by Nonato Sousa on 22/09/23.
//

import SwiftUI

struct SettingsScreen: View {
    //MARK: - PROPERTIES
    //stores the view presentation properties which are: dismiss and is Presented
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                )
                .padding()
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
