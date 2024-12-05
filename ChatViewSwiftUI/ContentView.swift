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
            ScrollView{
                VStack{
                    ForEach(0..<15){ _ in
                        HStack{
                            Circle()
                                .frame(width: 60, height: 60)
                            Capsule()
                                .frame(height: 60)
                        }
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 72)
            }
            .background(Color.cyan)
            .overlay(
                // Navigation Area
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
                , alignment: .top
            )
            
            // Input Area
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
    }
}
    #Preview {
        ContentView()
    }

