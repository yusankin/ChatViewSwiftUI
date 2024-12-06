//
//  DataModelTest.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/06.
//

import SwiftUI

struct DataModelTest: View {
    
    let user1 = User(id: "1", name: "カーキ", image: "user01")
    let user2 = User(id: "2", name: "ブルー", image: "user02")
    
    let message = Message(
        text: "Hello",
        user: User(id: "1", name: "カーキ", image: "user01"),
        date: Date(),
        readed: false
        )
    
    var body: some View {
        VStack {
            Text(user2.name)
            Image(user2.image)
            
            Text(message.text)
            Text(message.user.name)
        }
    }
}

#Preview {
    DataModelTest()
}
