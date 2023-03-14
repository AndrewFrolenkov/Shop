//
//  MainView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 13.03.2023.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = "Home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag("Home")
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
                .tag("Favorites")
            
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
                .tag("Cart")
            
            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message")
                }
                .tag("Chat")
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag("Profile")
        }
        .navigationBarBackButtonHidden()
    }
}

struct FavoritesView: View {
    var body: some View {
        Text("Favorites View")
    }
}

struct CartView: View {
    var body: some View {
        Text("Cart View")
    }
}

struct ChatView: View {
    var body: some View {
        Text("Chat View")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
