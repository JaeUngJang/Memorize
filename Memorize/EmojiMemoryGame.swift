//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by JaeUngJang on 2023/05/12.
//

import SwiftUI

// i)
//func makeCardContent(index: Int) -> String {
//    return "🙄"
//}


class EmojiMemoryGame {
    
    static let emojis: [String] = ["🚂", "✈️", "🚲", "🚁", "🏎", "🚌", "🚍", "🚎", "🚐", "🚑", "🚒", "🚓", "🚔", "🚕", "🚖", "🚗", "🚙", "🚚", "🛻", "🛴", "🛵", "🏍", "🚜","🚞"]


//    private var model: MemoryGame<String> =
//    i)
//    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCardContent) 밑에 코드랑 같은 의미
//    ii)
//    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { (index: Int) -> String in
//            return "🙄"
//        })
//    iii)
//    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { index in "🙄" })
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
//            EmojiMemoryGame.emojis[pairIndex] 밑에 코드랑 같은 의미
            emojis[pairIndex]
        }
    }
    
    
    // EmojiMemoryGame ViewModel에서만 MemoryGame<String>에 접근할 수 있도록 private을 입힘
    // 근데 private을 쓰면 너무 제한적이어서 private(set)을 사용한다면 읽기 전용으로 model 사용 가능
    // private(set) var model: MemoryGame<String>

    // Int를 받고 String을 반환하는 식 [ _ in "🙄" ]
//    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    private var model: MemoryGame<String>  = createMemoryGame()
    
    
    // 아래와 같이 변수로 만들어 준다면 private(set)으로 할 필요없이 ViewModel에서 연산해서 보내줌
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
