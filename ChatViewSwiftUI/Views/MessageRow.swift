//
//  MessageRow.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/05.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 60, height: 60)
            Capsule()
                .frame(height: 60)
        }
        .padding(.bottom)
    }
}

#Preview {
    MessageRow()
}
