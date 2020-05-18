//
//  NetworkManager.swift
//  SwiftUIExample
//
//  Created by Mac on 18.05.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation


class NetworkManager : ObservableObject {
    private let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page")
    @Published var posts = [Post]()
    func fetchData(){
        if let url = url{
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, err) in
                if err == nil {
                    let decoder = JSONDecoder()
                    if let data = data{
                        do {
                            let result = try decoder.decode(Results.self, from: data)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                        }catch{
                            print(error.localizedDescription)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
