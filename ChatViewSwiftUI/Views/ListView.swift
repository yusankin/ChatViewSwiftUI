//
//  ListView.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/18.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var vm: ChatViewModel = ChatViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                header
                
                // List
                list
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ListView()
}

extension ListView {
    private var header: some View {
        HStack{
            Text("トーク")
                .font(.title2.bold())
            
            Spacer()
            
            HStack(spacing: 16){
                Image(systemName: "text.badge.checkmark")
                Image(systemName: "square")
                Image(systemName: "ellipsis.bubble")
            }
            .font(.title2)
        }
    }
    
    private var list: some View {
        ScrollView{
            VStack{
                ForEach(vm.chatData){ chat in
                    NavigationLink{
                        ContentView(chat: chat)
                            .toolbar(.hidden)
                    } label: {
                        listRow(chat: chat)
                    }
                }
                    
            }
        }
    }
      
    private func listRow(chat: Chat) -> some View {
//    private var listRow: some View {
        HStack{
            Image("user01")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text("TITLE")
                    .foregroundColor(.primary)
                
                Text(chat.recentMessageText)
                    .font(.footnote)
                    .lineLimit(1)
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            Spacer()
            
            Text(chat.recentMessageDateString)
                .font(.caption)
                .foregroundColor(Color(uiColor: .secondaryLabel))
        }
    }
}
