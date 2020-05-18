//
//  DetailView.swift
//  SwiftUIExample
//
//  Created by Mac on 18.05.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
