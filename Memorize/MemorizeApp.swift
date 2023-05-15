//
//  MemorizeApp.swift
//  Memorize
//
//  Created by JaeUngJang on 2023/05/02.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
