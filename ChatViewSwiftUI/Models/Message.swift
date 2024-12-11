//
//  Message.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/06.
//

import Foundation

struct Message: Decodable, Identifiable {
    let id: String
    let text: String
    let user: User
    let date: String
    let readed: Bool
}
