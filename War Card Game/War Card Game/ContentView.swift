//
//  ContentView.swift
//  War Card Game
//
//  Created by nile on 1/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:Int = 0
    @State var cpuCard:Int = 0
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    @State var gamePrompt = "The first to get to 10 wins!"
    
    var body: some View {

        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack{
                
                Spacer()

                Image("logo")
                
                Spacer()
                
                Text(gamePrompt)
                    .foregroundColor(.white)
                    .font(.headline)
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    Image("card" + String(playerCard))
                    Spacer()
                    Image("card" + String(cpuCard))
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(
                    action:{
                        dealCards()
                    },
                    label: {
                        Image("button")
                    }
                )
                    

                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    VStack{
                        
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)

                        Text(String(playerScore))
                            .font(.largeTitle)

                    }
                    
                    Spacer()
                    
                    VStack{

                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    
                    Spacer()
                        
                }
                .foregroundColor(.white)
                
//                Spacer()
                
            }
            
        }
    }
    
    func dealCards() {
        
        playerCard = Int.random(in: 2...14)
        cpuCard = Int.random(in: 2...14)
        
        if playerCard > cpuCard{
            playerScore += 1
        }
        else if playerCard < cpuCard{
            cpuScore += 1
        }
        
        checkWin()
        
    }
    
    func checkWin() {
        
        var win:Bool = false
        
        if playerScore == 10{
            gamePrompt = "Player Wins!"
            win = true
        }
        else if cpuScore == 10{
            gamePrompt = "CPU Wins!"
            win = true
        }
        
        if win {
            playerScore = 0
            cpuScore = 0
            playerCard = 0
            cpuCard = 0
        } else {
            gamePrompt = "The first to get to 10 wins!"
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
