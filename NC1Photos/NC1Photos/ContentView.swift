//
//  ContentView.swift
//  NC1Photos
//
//  Created by Laura Bognanni on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView(){
            LibraryScreen()
                .tabItem{
                    Label("Library", systemImage: "photo.fill.on.rectangle.fill")
                }
                .toolbarBackground(.visible, for: .tabBar)
            ForYouScreen()
                .tabItem{
                    Label("For You", systemImage: "heart.text.square.fill")
                }
            AlbumsScreen()
                .tabItem{
                    Label("For You", systemImage: "rectangle.stack.fill")
                }
            SearchScreen()
                .tabItem{
                    Label("For You", systemImage: "magnifyingglass")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//nekonya
