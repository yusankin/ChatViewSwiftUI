//
//  ContentView.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/05.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textFieldText: String = ""
    
    var body: some View {
        VStack(spacing: 0){
            // Message Area
            messageArea
            
            // Navigation Area
            .overlay(navigationArea, alignment: .top)
            
            // Input Area
            inputArea
        }
    }
}
    #Preview {
        ContentView()
    }

extension ContentView {
    private var messageArea: some View {
        ScrollView{
            VStack{
                ForEach(0..<15){ _ in
                    MessageRow()
                }
            }
            .padding(.horizontal)
            .padding(.top, 72)
        }
        .background(Color.cyan)
    }
    
    private var inputArea: some View {
        HStack{
            HStack{
                Image(systemName: "plus")
                Image(systemName: "camera")
                Image(systemName: "photo")
            }
            .font(.title2)
            TextField("Aa", text: $textFieldText)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .clipShape(Capsule())
                .overlay(
                    Image(systemName: "face.smiling")
                        .font(.title2)
                        .padding(.trailing)
                        .foregroundColor(.gray)
                    , alignment: .trailing
                )
            Image(systemName: "mic")
                .font(.title2)
            
        }
        .padding()
        .background(Color.white)
    }
    
    private var navigationArea: some View {
        HStack{
            Image(systemName: "chevron.backward")
                .font(.title2)
            Text("Title")
                .font(.title2.bold())
            Spacer()
            HStack(spacing: 16) {
                Image(systemName: "text.magnifyingglass")
                Image(systemName: "phone")
                Image(systemName: "line.3.horizontal")
            }
            .font(.title2)
            
        }
        .padding()
        .background(Color.cyan.opacity(0.9))
    }
}
