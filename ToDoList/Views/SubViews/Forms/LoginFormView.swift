//
//  LoginFormView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct LoginFormView: View {
    @State var email = ""
    @State var password = ""
    
    // color
    let primaryColor: Color
    
    var body: some View {
        Form {
            TextField("Email address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            ButtonView(primaryColor: primaryColor,
                       buttonText: "Login") {
                // Action
            }
            }
            .padding(.top, 50)
        
    }
}

#Preview {
    LoginFormView(primaryColor: .pink)
}
