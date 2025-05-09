//
//  VerifyOTP.swift
//  E-Commerce
//
//  Created by Manish on 08/05/25.
//

import SwiftUI

struct VerifyOTP: View {
    
    @Binding var phoneNumber: String
    @State private var otp: String = String()
    @State private var pushToHomeScreen: Bool = false
    
    var body: some View {
        VStack {
            
            Text("Verify with OTP")
            Text("Send via SMS to \(phoneNumber)")
            TextField("OTP", text: $otp)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .frame(height: 60)
            
            Button("Verify OTP") {
                pushToHomeScreen = true
            }
            .disabled(otp.count < 4)
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .fullScreenCover(isPresented: $pushToHomeScreen) {
            TabBarView()
        }
    }
}

#Preview {
    VerifyOTP(phoneNumber: .constant("1234567890"))
}
