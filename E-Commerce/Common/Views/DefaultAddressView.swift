//
//  HeaderView.swift
//  E-Commerce
//
//  Created by Manish on 09/05/25.
//

import SwiftUI

struct DefaultAddressView: View {
    
    @Binding var address: String
    
    var body: some View {
        HStack {
            Image(systemName: "mappin")
            Text(address)
            Spacer()
            Image(systemName: "chevron.right")
        }
    }
}

#Preview {
    DefaultAddressView(address: .constant("Default Address"))
}
