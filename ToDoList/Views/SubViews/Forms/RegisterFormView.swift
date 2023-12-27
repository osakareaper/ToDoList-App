//
//  RegisterFormView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct RegisterFormView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    // colors
    let primaryColor: Color
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
            TextField("Email address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            ButtonView(primaryColor: primaryColor,
                       buttonText: "Register") {
                // Action
            }
            
            }
            .padding(.top, 50)
    }
}

#Preview {
    RegisterFormView(primaryColor: .indigo)
}
