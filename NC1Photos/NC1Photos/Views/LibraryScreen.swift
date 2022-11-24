//
//  LibraryScreen.swift
//  NC1Photos
//
//  Created by Laura Bognanni on 18/11/22.
//

import SwiftUI

struct LibraryScreen: View {
    
    @State private var selected = 0
    
    @State var selection: Int = 3
    private let items: [String] = ["Years", "Months", "Days", "All"]
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading){
                VStack{
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
                        }//VStack
                    }//ScrollView
                    
                    /*
                     .toolbar{
                     ToolbarItemGroup(placement: .navigationBarTrailing){
                     
                     HStack{
                     Text("17 Nov 2022")
                     .font(.title2)
                     .fontWeight(.bold)
                     
                     Spacer().frame(width: 100)
                     Button("Select") {
                     //actions
                     }
                     .buttonStyle(.bordered)
                     .buttonBorderShape(.roundedRectangle(radius: 15))
                     //.cornerRadius(15.0)
                     
                     Menu("...") {
                     Label("Zoom In", systemImage: "plus.magnifyingglass")
                     Label("Zoom Out", systemImage: "minus.magnifyingglass")
                     Label("Aspect Ratio Grid", systemImage: "rectangle.arrowtriangle.2.inward")
                     Label("Filter", systemImage: "line.horizontal.3.decrease.circle")
                     Label("Show Map", systemImage: "map")
                     }
                     .menuStyle(.button)
                     .buttonStyle(.bordered)
                     .buttonBorderShape(.capsule)
                     //.cornerRadius(40.0)
                     }//HStack
                     
                     //.toolbar(.automatic , for: .navigationBar)
                     //.navigationTitle("17 Nov 2022")
                     //.navigationBarTitleDisplayMode(.large)
                     }//ToolbarItemGroup
                     }//toolbar
                     */
                    HStack{
                        SegmentedPicker(items: self.items, selection: self.$selection)
                            .padding()
                            .offset(y:-75)
                        
                        /*Picker("Choose Photo Date", selection: $selected) {
                         Text("Years")
                         .tag(3)
                         Text("Months")
                         .tag(2)
                         Text("Days")
                         .tag(1)
                         Text("All Photos")
                         .tag(0)
                         
                         }
                         .padding()
                         .pickerStyle(.segmented)
                         .offset(y:-75)*/
                    }
                    .opacity(0.8)
                }//VStack
                //.navigationTitle("Ciao")
                //.navigationBarTitleDisplayMode(.inline)
                //.navigationBarBackButtonHidden()
                .navigationBarHidden(true)
                .ignoresSafeArea(.all)
                
                
                HStack {
                    Text("17 Nov 2022")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                        Button("Select") {
                            //actions
                        }
                        .fontWeight(.bold)
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.roundedRectangle(radius: 15))
                        .foregroundColor(Color.white)
                        
                        //.cornerRadius(15.0)
                        
                        Menu("...") {
                            Label("Zoom In", systemImage: "plus.magnifyingglass")
                            Label("Zoom Out", systemImage: "minus.magnifyingglass")
                            Label("Aspect Ratio Grid", systemImage: "rectangle.arrowtriangle.2.inward")
                            Label("Filter", systemImage: "line.horizontal.3.decrease.circle")
                            Label("Show Map", systemImage: "map")
                        }
                        .fontWeight(.bold)
                        .menuStyle(.button)
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.capsule)
                        .foregroundColor(Color.white)
                    }//HStack
                .padding()
            }//ZStack
        }//NavigationView
    }//body
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        LibraryScreen()
    }
}
