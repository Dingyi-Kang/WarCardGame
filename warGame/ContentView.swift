//
//  ContentView.swift
//  warGame
//
//  Created by Dingyi Kang on 4/2/21.
//

import SwiftUI

struct ContentView: View {
    @State private var leftCard = "back"
    @State private var rightCard = "back"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            
            Image("background").ignoresSafeArea()
            
            VStack() {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(leftCard)
                    Spacer()
                    Image(rightCard)
                    Spacer()
                }
                
                Spacer()
                Button(action:{
                    let num1 = Int.random(in: 2...14)
                    let num2 = Int.random(in: 2...14)
                    leftCard = "card" + String(num1)
                    rightCard = "card" + String(num2)
                    
                    if num1 > num2 {
                        playerScore+=1
                    }
                    else if num2 > num1 {
                        cpuScore+=1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
//                Spacer()
                Button(action: {
                    playerScore = 0
                    cpuScore = 0
                    leftCard = "back"
                    rightCard = "back"
                }, label: {
                    Text("CLEAR").font(.system(size:16, weight: .bold)).padding(.horizontal, 18.0).background(Color.white).opacity(0.3).cornerRadius(20.0)
                        .foregroundColor(Color.white)
                })
                
                Spacer()
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("PLAYER")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        
                    }
                    Spacer()
                    VStack{
                        Text("ROBOT")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        
                    }
                    Spacer()
                }
            Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
