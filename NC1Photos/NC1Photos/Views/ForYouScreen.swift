//
//  ForYouScreen.swift
//  NC1Photos
//
//  Created by Laura Bognanni on 18/11/22.
//

import SwiftUI

struct ForYouScreen: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                Divider()
                HStack{
                    Text("Memories")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button("See All"){
                        //action
                    }
                }
                .padding(.horizontal)
                ScrollView(.horizontal){
                    HStack(spacing: 15){
                        ZStack{
                            Image("Image1")
                                .resizable()
                                .frame(width: 346, height: 390)
                                .cornerRadius(20.0)
                            VStack{
                                Text("23 SEPTEMBER")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text("2022")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                            .offset(x: 0, y: 150)
                            Button(action:{}) {
                                Image(systemName: "ellipsis.circle")
                                    .foregroundColor(.white)
                            }
                            .offset(x: 150, y: -170)
                            Button(action:{}) {
                                Image(systemName: "heart")
                                    .foregroundColor(.white)
                            }
                            .offset(x: 120, y: -170)
                        }
                        ZStack{
                            Image("Image2")
                                .resizable()
                                .frame(width: 346, height: 390)
                                .cornerRadius(20.0)
                            VStack{
                                Text("Naples")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text("26 SEP 2022")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                            .offset(x: -90, y: -150)
                            Button(action:{}) {
                                Image(systemName: "ellipsis.circle")
                                    .foregroundColor(.white)
                            }
                            .offset(x: 150, y: -170)
                            Button(action:{}) {
                                Image(systemName: "heart")
                                    .foregroundColor(.white)
                            }
                            .offset(x: 120, y: -170)
                        }
                    }
                    .padding(.bottom)
                }
                .padding(.horizontal)
                
                Divider()
                
                HStack{
                    Text("Featured Photos")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                   
                    Spacer()
                }
                ScrollView(.horizontal){
                    HStack(spacing: 15){
                        VStack{
                            Image("Image3")
                                .resizable()
                                .frame(width: 346, height: 390)
                                .cornerRadius(8.0)
                            HStack{
                                Text("16 Nov 2022")
                                Spacer()
                            }
                        }
                        VStack{
                            Image("Image4")
                                .resizable()
                                .frame(width: 346, height: 390)
                                .cornerRadius(8.0)
                            HStack{
                                Text("27 Sep 2022")
                                Spacer()
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .multilineTextAlignment(.leading)
            .navigationTitle("For You")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarBackButtonHidden()
            .opacity(2)
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForYouScreen()
    }
}
