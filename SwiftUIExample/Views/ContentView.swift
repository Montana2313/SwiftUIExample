//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Mac on 18.05.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts, rowContent: { postItem in
                NavigationLink(destination: DetailView(url: postItem.url)) {
                    HStack {
                       Text(String(postItem.points)).padding().overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.green, lineWidth: 4))
                        Text(postItem.title)
                    }
                }
            })
                .navigationBarTitle("HackerNews")
                .navigationBarItems(trailing:
                NavigationLink(destination: Deneme()) {
                           Text("Deneme")
                        }.buttonStyle(PlainButtonStyle())
            
            
            )

        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


