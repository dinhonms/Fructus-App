//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Nonato Sousa on 26/09/23.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .padding()
        SettingsRowView(name: "Developer", content: "John / Jane")
            .padding()
    }
}
