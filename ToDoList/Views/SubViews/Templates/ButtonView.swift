//
//  ButtonView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct ButtonView: View {
    // color
    let primaryColor: Color
    
    // text
    let buttonText: String
    
    // action
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(primaryColor)
                Text(buttonText)
                    .bold()
                    .foregroundStyle(.white)
            }
            .padding(10)
        })
    }
}

#Preview {
    ButtonView(primaryColor: .pink,
               buttonText: "Login") {
        // Action
    }
}
