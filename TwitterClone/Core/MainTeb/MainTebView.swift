//
//  MainTebView.swift
//  TwitterClone
//
//  Created by 곽서방 on 3/15/24.
//

import SwiftUI

struct MainTebView: View {
    @State private var selectedIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
           FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            ExploreView()
                 .onTapGesture {
                     self.selectedIndex = 1
                 }
                 .tabItem {
                     Image(systemName: "magnifyingglass")
                 }.tag(1)
            
            NotificationsView()
                 .onTapGesture {
                     self.selectedIndex = 2
                 }
                 .tabItem {
                     Image(systemName: "bell.fill")
                 }.tag(2)
            
            MessagesView()
                 .onTapGesture {
                     self.selectedIndex = 3
                 }
                 .tabItem {
                     Image(systemName: "envelope.fill")
                 }.tag(3)
        }
    }
}

#Preview {
    MainTebView()
}
