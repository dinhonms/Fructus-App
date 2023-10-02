//
//  SettingsScreen.swift
//  Fructus
//
//  Created by Nonato Sousa on 22/09/23.
//

import SwiftUI
import PopupView

struct SettingsScreen: View {
    //MARK: - PROPERTIES
    //stores the view presentation properties which are: dismiss and is Presented
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboardingActive") var isOnboardingActive = false
    @State private var isShowingPopup = false
    @State private var toggleState = false
    
    private func onYesPressed(){
        isShowingPopup = false
        toggleState = true
        isOnboardingActive = true
        print("YES: \(isOnboardingActive)")
        presentationMode.wrappedValue.dismiss()
    }
    
    private func onNoPressed(){
        isShowingPopup = false
        toggleState = false
        isOnboardingActive = false
        print("NO: \(isOnboardingActive)")
    }
    
    private func onClosePressed(){
        isShowingPopup = false
        toggleState = false
        isOnboardingActive = false
        print("CLOSE: \(isOnboardingActive)")
    }
    
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
                    
                    //MARK: - SECTION 2
                    GroupBox {
                        Text("If you wish, you can restart the application by toggling this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isShowingPopup){
                            Text("Restart".uppercased())
                        }
                        .onChange(of: toggleState) { newValue in
                            print("Toggle state: \(newValue)")
                            
                            if newValue {
//                                isOnboardingActive = false
                            }
                        }
                        
                        
                    } label: {
                        LabelView(labelText: "Customization", labelImage: "paintbrush")
                        Divider().padding(.vertical, 4)
                    }

                    
                    //MARK: - SECTION 3
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
        .popup(isPresented: $isShowingPopup){
            ConfirmPopupView(onYesPressed: onYesPressed, onNoPressed: onNoPressed, onClosePressed: onClosePressed)
        } customize: {
            $0.type(.default)
                .position(.center)
                .animation(.easeIn)
                .closeOnTapOutside(false)
                .backgroundColor(.black.opacity(0.5))
                .closeOnTap(false)
        }
    }
}

//MARK: - PREVIEW
struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
