//
//  RegisterFormView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct RegisterFormView: View {
    
    @ObservedObject var viewModel = RegisterViewViewModel()
    
    // colors
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
            TextField("Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            // Register Button
            ButtonView(primaryColor: primaryColor,
                       buttonText: "Register") {
                viewModel.register()
            }
            
            }
            .padding(.top, 50)
    }
}

#Preview {
    RegisterFormView(primaryColor: .indigo)
}
