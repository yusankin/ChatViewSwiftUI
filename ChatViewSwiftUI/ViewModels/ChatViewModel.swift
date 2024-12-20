//
//  ChatViewModel.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/09.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var chatData: [Chat] = []
    
    init() {
        chatData = fetchChatData()
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
    
    func addMessage(chatID: String, text: String){
        
        guard let index = chatData.firstIndex (where: {chat in
            chat.id == chatID
        }) else{ return }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let formattedDateString = formatter.string(from: Date())
        
        let newMessage = Message(
            id: UUID().uuidString,
            text: text,
            user: User.currentUser,
            date: formattedDateString,
            readed: false
        )
        
        chatData[index].messages.append(newMessage)
    }
}
