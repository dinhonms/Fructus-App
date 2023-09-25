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
                
                VStack(spacing: 20) {
                //MARK: - SECTION 1
                    GroupBox {
                        HStack {
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        LabelView(labelText: "Fructus", labelImage: "info.circle")
                        Divider().padding(.vertical, 4)
                    }

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
