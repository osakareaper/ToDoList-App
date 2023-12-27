//
//  RegisterHeaderView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct RegisterHeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.pink)
                .rotationEffect(Angle(degrees: 8))
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.cyan)
                .rotationEffect(Angle(degrees: 4))
                .offset(y:12)
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.indigo)
                .offset(y:25)
            
            VStack {
                Text("Create an Account")
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .bold()
                Text("it's free! 😱")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                    .offset(x:90, y:-2)
                Text("☑️")
                    .font(.system(size: 25))
                    .offset(x:-145, y:30)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width-50,
                height: 150)
        .padding(.top, 95)
    }
}

#Preview {
    RegisterHeaderView()
}
