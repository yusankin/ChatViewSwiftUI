//
//  MessageRow.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/05.
//

import SwiftUI

struct MessageRow: View {
    
    let message: Message
    
    var body: some View {
        HStack(alignment: .top){
            if message.user.isCurrentUser {
                Spacer()
                messageState
                messageText
            }else{
                userThum
                messageText
                messageState
                Spacer()
            }
        }
        .padding(.bottom)
    }
}

extension MessageRow{
    
    private var userThum: some View {
        Image(message.user.image)
            .resizable()
            .frame(width: 48, height: 48)
            .clipShape(Circle())
    }
    
    private var messageText: some View {
        Text(message.text)
            .padding()
            .background(message.user.isCurrentUser ? Color("Bubble") : Color(uiColor: .tertiarySystemBackground))
            .foregroundColor(message.user.isCurrentUser ? .black : .primary)
            .cornerRadius(30)
    }
    
    private var messageState: some View {
        VStack(alignment: .trailing){
            Spacer()
            
            if message.user.isCurrentUser && message.readed {
                Text("既読")
            }
            Text(formattedDateString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
    
    private var formattedDateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        guard let date = formatter.date(from: message.date) else { return ""}
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date)
    }
}

//#Preview {
//    MessageRow()
//        .background(Color.cyan)
//}
