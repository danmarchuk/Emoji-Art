//
//  EmojiArtDocumentView.swift
//  Emoji Art
//
//  Created by Данік on 04/02/2024.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    
    private let emojis = "🗯🩵😸💀👻👺😈🥵🤣😅🥶🫵👵🧑‍🦲👩‍💻🧅🫑🥑🍑🍏🍐🍎🥭🍇🍈🍉🍊🍋🍌🍍🌮🥪🌭🍕🍟🍔"
    var body: some View {
        VStack {
            Color.yellow
            ScrollingEmojis(emojis)
        }
    }
}

struct ScrollingEmojis: View {
    let emojis: [String]
    
    init(_ emojis: String) {
        self.emojis = emojis.uniqued.map(String.init)
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack{
                ForEach(emojis, id: \.self) { emoji in
                    Text(emoji)
                }
            }
        }
    }
}

#Preview {
    EmojiArtDocumentView()
}
