//
//  ListView.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/18.
//

import SwiftUI

struct ListView: View {
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
                ForEach(0..<4){ _ in
                    NavigationLink{
                        ContentView()
                            .toolbar(.hidden)
                    } label: {
                        listRow
                    }
                }
                    
            }
        }
    }
    
    private var listRow: some View {
        HStack{
            Image("user01")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text("TITLE")
                    .foregroundColor(.primary)
                
                Text("CONTENT")
                    .font(.footnote)
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            Spacer()
            
            Text("12/31")
                .font(.caption)
                .foregroundColor(Color(uiColor: .secondaryLabel))
        }
    }
}
