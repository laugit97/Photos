//
//  LibraryScreen.swift
//  NC1Photos
//
//  Created by Laura Bognanni on 18/11/22.
//

import SwiftUI

struct LibraryScreen: View {
    
    @State private var selected = 0
    
    var body: some View {
       NavigationStack{
            HStack{
                Text("17 Nov 2022")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button("Select") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .buttonStyle(.bordered)
                .cornerRadius(15.0)
                
                Menu("...") {
                    Label("Zoom In", systemImage: "plus.magnifyingglass")
                    Label("Zoom Out", systemImage: "minus.magnifyingglass")
                    Label("Aspect Ratio Grid", systemImage: "rectangle.arrowtriangle.2.inward")
                    Label("Filter", systemImage: "line.horizontal.3.decrease.circle")
                    Label("Show Map", systemImage: "map")
                }
                .buttonStyle(.bordered)
                .cornerRadius(15.0)
                
                //Text("Hello! 🇬🇧")
                    //.navigationTitle("17 Nov 2022")
                    //.navigationBarBackButtonHidden(true)
            }
            .padding()
            
           ScrollView(.vertical){
                VStack(spacing: 2){
                    
                    HStack(spacing: 2){
                        Image("Image1")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image2")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image3")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                    
                    HStack(spacing: 2){
                        Image("Image4")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image5")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image6")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                    
                    HStack(spacing: 2){
                        Image("Image7")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image8")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image9")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                    
                    HStack(spacing: 2){
                        Image("Image10")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image11")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image12")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                    
                    HStack(spacing: 2){
                        Image("Image1")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image2")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image3")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                    
                    HStack(spacing: 2){
                        Image("Image4")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image5")
                            .resizable()
                            .frame(width: 130, height: 130)
                        Image("Image6")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                }//VStack
                
                Text("Hello! 🇬🇧")
            }
           //.navigationTitle("17 Nov 2022")
           //.navigationBarTitleDisplayMode(.large)
           //.toolbar(.automatic, for: .navigationBar)
           
           Picker("Choose Photo Date", selection: $selected) {
               Text("Years")
                   .tag(3)
               Text("Months")
                   .tag(2)
               Text("Days")
                   .tag(1)
               Text("All Photos")
                   .tag(0)
           }
           .pickerStyle(.segmented)
           .cornerRadius(15.0)
           .padding()
       }//NavigationStack
    } //body
    
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        LibraryScreen()
    }
}
