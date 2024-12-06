//
//  Message.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/06.
//

import Foundation

struct Message {
    let id: String = UUID().uuidString
    let text: String
    let user: User
    let date: Date
    let readed: Bool
}
