//
//  PostData.swift
//  SwiftUIExample
//
//  Created by Mac on 18.05.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation


struct Results : Decodable {
    let hits : [Post]
}
struct Post : Decodable , Identifiable {
    var id :String {
        return objectID
    }
    let objectID : String
    let points : Int
    let title :String
    let url :String?
}
