//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Marcus Osaka on 26/12/23.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    init() {}
    
    func login() {
        // Validate
        guard validate() else {
            return
        }
        
        // Try login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMsg = ""
        
        // Fill all fields
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMsg = "Please fill in all fields"
            return false
        }
        
        // Valid Email
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Enter a valid email"
            return false
        }
        
        // Return true if doesn't have any errors
        return true
    }
}
