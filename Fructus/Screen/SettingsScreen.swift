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

                    GroupBox {
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "5.2")
                        SettingsRowView(name: "App Vertsion", content: "0.5.3")
                        
                    } label: {
                        LabelView(labelText: "Application", labelImage: "apps.iphone")
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
