//
//  HeaderView.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import SwiftUI

struct HeaderView: View {
    // titles
    let title: String
    let subtitle: String
    
    // subtitle x pos
    let subtitleX: Double
    
    // colors
    let primaryColor: Color
    let secondaryColor: Color
    let terciaryColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(terciaryColor)
                .rotationEffect(Angle(degrees: 8))
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(secondaryColor)
                .rotationEffect(Angle(degrees: 4))
                .offset(y:12)
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(primaryColor)
                .offset(y:25)
    
            VStack {
                Text(title)
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                    .offset(x:subtitleX, y:-2)
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
    HeaderView(title: "To-Do-List", subtitle: "do ya things! ☺️", subtitleX: 15, primaryColor: .pink, secondaryColor: .indigo, terciaryColor: .cyan)
}
