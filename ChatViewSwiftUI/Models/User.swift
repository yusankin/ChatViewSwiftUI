//
//  User.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/06.
//

import Foundation

struct User: Decodable {
    let id: String
    let name: String
    let image: String
    
    var isCurrentUser: Bool {
        self.id == "2"
    }
}
