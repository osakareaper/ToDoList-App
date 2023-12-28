//
//  LoginFormView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct LoginFormView: View {
    
    @ObservedObject var viewModel = LoginViewViewModel()
    
    // color
    let primaryColor: Color
    
    var body: some View {
        Form {
            // Error Msg
            if !viewModel.errorMsg.isEmpty {
                Text(viewModel.errorMsg)
                    .foregroundStyle(.red)
                    .font(.system(size: 14))
            }

            // Fields
            TextField("Email address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)

            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            // Login Button
            ButtonView(primaryColor: primaryColor,
                       buttonText: "Login") {
                viewModel.login()
                }
            }
            .padding(.top, 50)
    }
}

#Preview {
    LoginFormView(primaryColor: .pink)
}
