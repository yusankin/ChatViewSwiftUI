//
//  ChatViewModel.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/09.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    var chatData: [Chat] = []
    @Published var messages: [Message] = []
    
    init() {
        chatData = fetchChatData()
        messages = chatData[0].messages
    }
    
    private func fetchChatData() -> [Chat] {
        let fileName = "chatData.json"
        let data: Data
        
        guard let filePath = Bundle.main.url(forResource: fileName, withExtension: nil)
        else{
            fatalError("\(fileName)が見つかりません")
        }
        do{
            data = try Data(contentsOf: filePath)
        } catch{
            fatalError("\(fileName)のロードに失敗しました")
        }
        do{
           return try JSONDecoder().decode([Chat].self, from: data)
        }catch{
            fatalError("\(fileName)を\(Chat.self)にデコード変換するのを失敗しました")
        }
    }
    
    func addMessage(text: String){
        let newMessage = Message(
            id: UUID().uuidString,
            text: text,
            user: User.currentUser,
            date: Date().description,
            readed: false
        )
        
        messages.append(newMessage)
    }
}
