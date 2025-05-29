//
//  HomeView.swift
//  E-Commerce
//
//  Created by Manish on 08/05/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private(set) var searchText: String = String()
    
    @State var defaultAddress: String = "Pune, Maharastra"
    
    var body: some View {
        NavigationStack {
            VStack {
                DefaultAddressView(address: $defaultAddress)
                CarouselView()
                    .padding(.top, -15)
                Spacer()
            }
            .padding(5)
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    HomeView()
}
