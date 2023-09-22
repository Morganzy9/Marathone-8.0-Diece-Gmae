//
//  ContentView.swift
//  Marathone 8.0 Diece-Gmae
//
//  Created by Ислам Пулатов on 9/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftNumberDice = 1
    @State var rightNumberDice = 1
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftNumberDice)
                    DiceView(n: rightNumberDice)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    self.leftNumberDice = Int.random(in: 1...6)
                    self.rightNumberDice = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                Spacer()
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
