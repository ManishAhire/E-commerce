//
//  TabView.swift
//  E-Commerce
//
//  Created by Manish on 08/05/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            
            Tab("Category", systemImage: "basket") {
                CategoryView()
            }
            
            Tab("Account", systemImage: "person") {
                AccountView()
            }
            
            Tab("Cart", systemImage: "cart") {
                CartView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
