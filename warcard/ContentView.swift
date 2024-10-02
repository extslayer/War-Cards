//
//  ContentView.swift
//  warcard
//
//  Created by Manmohan Shrivastava on 02/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerc = "back"
    @State var cpuc = "back"
    @State var playerscore:Int = 0
    @State var cpuscore:Int = 0
    var body: some View {
        ZStack{
            Image("background-plain")
            
            VStack(spacing: 50.0){
                Image("logo")
                HStack{
                    Spacer()
                    Image(playerc)
                    Spacer()
                    Image(cpuc)
                    Spacer()
                }
                
                Button {
                     deals()
                } label: {
                    Image("button")         }


                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .fontWeight(.bold)
                        Text(String(playerscore))
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .fontWeight(.bold)
                        Text(String(cpuscore))
                            .fontWeight(.bold)
                    }
                    Spacer()
                }.font(.headline)
                    .foregroundColor(.white)
            }
        }
    }
    
    func deals(){
        var playerrandom = Int.random(in: 2...14)
        var cpurandom = Int.random(in: 2...14)
        playerc = "card" + String(playerrandom)
        cpuc = "card" + String(cpurandom)
        
        if playerrandom > cpurandom{
            playerscore += 1
        }
        else if playerrandom == cpurandom{
            print("Draw")
        }
        else{
            cpuscore += 1
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
