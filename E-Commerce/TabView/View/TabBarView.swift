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
            
            Tab("Home", image: "home") {
                HomeView()
            }
            
            Tab("Category", image: "category") {
                CategoryView()
            }
            
            Tab("Account", image: "user") {
                AccountView()
            }
            
            Tab("Cart", image: "cart") {
                CartView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
