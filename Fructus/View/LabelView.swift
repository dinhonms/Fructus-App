//
//  LabelView.swift
//  Fructus
//
//  Created by Nonato Sousa on 25/09/23.
//

import SwiftUI

struct LabelView: View {
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - PREVIEW
struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
