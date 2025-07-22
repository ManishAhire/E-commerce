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
            
            Tab("You", systemImage: "person") {
                AccountView()
            }
            
            Tab("More", systemImage: "square.2.layers.3d") {
                MoreView()
            }
            
            Tab("Cart", systemImage: "cart") {
                CartView()
            }
            
            Tab("Menu", systemImage: "line.3.horizontal") {
                CategoryView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
