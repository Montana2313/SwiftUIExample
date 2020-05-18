//
//  Deneme.swift
//  SwiftUIExample
//
//  Created by Mac on 18.05.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import SwiftUI

struct Deneme: View {
    var body: some View {
        NavigationView{
            VStack(spacing:5){
                SearchBar(placeHolder: "Deneme").frame(width: UIScreen.main.bounds.size.width - 20, height: 30, alignment: .top)
                Spacer()
                CollectionView()
            }
            .navigationBarTitle("Library")
        }
    }
}

struct Deneme_Previews: PreviewProvider {
    static var previews: some View {
        Deneme()
    }
}
struct SearchBar : UIViewRepresentable {
    let placeHolder :String
    func makeUIView(context: Context) -> UISearchBar {
        return UISearchBar()
    }
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.placeholder = self.placeHolder
        uiView.searchBarStyle = .minimal
    }
}
struct CollectionView:View {
    var body: some View{
        HStack(spacing:4){
            ForEach(0..<5) { _ in
                VStack{
                    Image("margot.jpg")
                    Text("Deneme")
                }
            }
        }
    }
}
