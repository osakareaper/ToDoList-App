//
//  CreateAccountView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct CreateAccountView: View {
    var body: some View {
        VStack(content: {
            Text("New here?")
            NavigationLink("Create an Account",
                           destination: RegisterView())
        })
    }
}

#Preview {
    CreateAccountView()
}
