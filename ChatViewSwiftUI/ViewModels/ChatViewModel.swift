//
//  ChatViewModel.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/09.
//

import Foundation

class ChatViewModel {
    
    var chatData: [Chat] = []
    var messages: [Message] = []
    
    init() {
        chatData = fetchChatData()
        messages = chatData[0].messages
        print(messages)
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
}
