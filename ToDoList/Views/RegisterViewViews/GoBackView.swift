//
//  GoBackView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct GoBackView: View {
    var body: some View {
        VStack(content: {
            NavigationLink("Go Back",
                           destination: LoginView())
        })
    }
}

#Preview {
    GoBackView()
}
