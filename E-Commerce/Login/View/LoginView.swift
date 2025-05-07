//
//  LoginView.swift
//  E-Commerce
//
//  Created by Manish on 07/05/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var userName: String = String()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Login")
                        .bold()
                    Text("OR")
                    Text("Signup")
                        .bold()
                }
               
                
                Text("Enter your Phone Number")
                
                TextField("Phone Number", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .frame(height: 60)
                    .keyboardType(.phonePad)
                    
                
                NavigationLink("Login using OTP") {
                    Text("Verify with OPT")
                }
                .disabled(userName.count < 10)
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        
    }
}

#Preview {
    LoginView()
}
