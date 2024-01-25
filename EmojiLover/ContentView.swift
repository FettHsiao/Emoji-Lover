//
//  ContentView.swift
//  EmojiLover
//
//  Created by Mac on 2024/1/25.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😎,😌,😉,😍
}


struct ContentView: View {
    @State var selection: Emoji = .😎
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Selection Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self){emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lover!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
