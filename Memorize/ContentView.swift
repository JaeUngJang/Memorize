//
//  ContentView.swift
//  Memorize
//
//  Created by JaeUngJang on 2023/05/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        
        
        
    }
}

struct CardView: View {
    
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill(.white)
                shape.stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
