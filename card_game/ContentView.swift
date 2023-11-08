//
//  ContentView.swift
//  card_game
//
//  Created by Prashanna GC on 07/11/2023.
//

import SwiftUI

struct ContentView: View {
   @State var cpuCard = "card13"
   @State var playerCard = "card7"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button{
                    deal()
                }label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .foregroundColor(.white)
                            .bold()
                            .padding(.bottom)
                            
                        Text(String(playerScore)).foregroundColor(.white).bold().font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").foregroundColor(.white).bold().padding(.bottom)
                        Text(String(cpuScore)).foregroundColor(.white).bold().font(.largeTitle)
                    }
                    Spacer()
                }
            }
        }
    }
    func deal(){
        // Randomize the player cards
        var playerRandomNumber = Int.random(in: 2...14)
        playerCard = "card" + String(playerRandomNumber)
        
        // Randomize the cpu cards
        var cpuRandomNumber = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuRandomNumber)
        
        // update the score
        if(playerRandomNumber > cpuRandomNumber){
            playerScore += 1
        }
        else if(playerRandomNumber == cpuRandomNumber){
            
        }
        else{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
