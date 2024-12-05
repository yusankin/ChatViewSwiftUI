//
//  ContentView.swift
//  ChatViewSwiftUI
//
//  Created by Yu Masuda on 2024/12/05.
//

import SwiftUI

struct ContentView: View {
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
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Capsule()
                .frame(height: 40)
            Circle()
                .frame(width: 40, height: 40)
            
        }
        .padding()
        .background(Color.white)
    }
    
    private var navigationArea: some View {
        HStack{
            Circle()
                .frame(width: 40, height: 40)
            Text("Title")
            Spacer()
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
        }
        .foregroundColor(Color.white)
        .padding()
        .background(Color.black.opacity(0.5))
    }
}
