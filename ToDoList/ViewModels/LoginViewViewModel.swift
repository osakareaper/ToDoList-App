//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import Foundation


class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    init() {}
    
    func login() {
        errorMsg = ""
        
        // Fill all fields
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMsg = "Please fill in all fields"
            return
        }
        
        // Valid Email
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Enter a valid email"
            return
        }
        
        // 
    }
    
    func validate() {
        
    }
    
}
