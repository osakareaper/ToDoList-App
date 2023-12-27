//
//  RegisterView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Create an Account", 
                       subtitle: "it's free! 😱",
                       subtitleX: 90,
                       primaryColor: .indigo,
                       secondaryColor: .cyan,
                       terciaryColor: .pink)
            
            // Register Form
            RegisterFormView(primaryColor: .indigo)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
