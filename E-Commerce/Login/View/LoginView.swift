//
//  LoginView.swift
//  E-Commerce
//
//  Created by Manish on 07/05/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var phoneNumber: String = String()
    
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
                
                TextField("Phone Number", text: $phoneNumber)
                    .textFieldStyle(.roundedBorder)
                    .frame(height: 60)
                    .keyboardType(.phonePad)
                    
                
                NavigationLink("Login using OTP") {
                    VerifyOTP(phoneNumber: $phoneNumber)
                }
                .disabled(phoneNumber.count < 10)
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        
    }
}

#Preview {
    LoginView()
}
