//
//  LoginView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To-Do-List", 
                           subtitle: "do ya things! ☺️",
                           subtitleX: 15,
                           primaryColor: .pink,
                           secondaryColor: .indigo,
                           terciaryColor: .cyan)
                
                // Login Form
                LoginFormView(primaryColor: .pink)
                
                // Create Account
                CreateAccountView()
                
                Spacer()
                }
            }
        }
    }


#Preview {
    LoginView()
}
