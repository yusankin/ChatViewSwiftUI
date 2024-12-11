//
//  Chat.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/06.
//

import Foundation

struct Chat: Decodable {
    let id: String
    let messages: [Message]
}
