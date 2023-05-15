//
//  ContentView.swift
//  Memorize
//
//  Created by JaeUngJang on 2023/05/02.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
//                    ForEach(carEmojis[0..<emojiCount], id: \.self) { emoji in
                    ForEach(viewModel.cards, id: \.self) { card in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)

            Spacer()
            
//            HStack {
//                Spacer()
//                vehicle
//                Spacer()
//                food
//                Spacer()
//                face
//                Spacer()
//            }
//            .font(.largeTitle)
//            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    
//    var remove: some View {
//        Button {
//            if emojiCount > 1 {
//                emojiCount -= 1
//            }
//        } label: {
//            Image(systemName: "minus.circle")
//        }
//    }
//
//    var add: some View {
//        Button {
//            if emojiCount < carEmojis.count {
//                emojiCount += 1
//            }
//        } label: {
//            Image(systemName: "plus.circle")
//        }
//    }
//
//    var vehicle: some View {
//        Button {
//            currentEmojis = carEmojis
//        } label: {
//            VStack {
//                Image(systemName: "car")
//                Text("Vehicle")
//                    .font(.caption)
//            }
//        }
//    }
//
//    var food: some View {
//        Button {
//            currentEmojis = foodEmojis
//        } label: {
//            VStack {
//                Image(systemName: "fork.knife")
//                Text("Food")
//                    .font(.caption)
//            }
//        }
//    }
//    var face: some View {
//        Button {
//            currentEmojis = faceEmojis
//        } label: {
//            VStack {
//                Image(systemName: "face.smiling")
//                Text("Face")
//                    .font(.caption)
//            }
//        }
//    }
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}
























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
    }
}
