//
//  MessageRow.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/05.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack(alignment: .top){
            userThum
            messageText
            messageState
            Spacer()
        }
        .padding(.bottom)
    }
}

extension MessageRow{
    
    private var userThum: some View {
        Image("user01")
            .resizable()
            .frame(width: 48, height: 48)
            .clipShape(Circle())
    }
    
    private var messageText: some View {
        Text("Hello World")
            .padding()
            .background(Color.white)
            .cornerRadius(30)
    }
    
    private var messageState: some View {
        VStack(alignment: .trailing){
            Spacer()
            Text("既読")
            Text(formattedDateString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
    
    private var formattedDateString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
}

#Preview {
    MessageRow()
        .background(Color.cyan)
}
