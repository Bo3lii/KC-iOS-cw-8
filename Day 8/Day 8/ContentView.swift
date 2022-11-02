//
//  ContentView.swift
//  Day 8
//
//  Created by AWS on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    let chooseColor = [Color.cyan , Color.red , Color.green , Color.yellow]
   @State var choseColor = Color.blue
    @State var word = ""
    @State var ishai = false
    @State var i = Color.gray
    var body: some View {
        NavigationView{
            ZStack{
                
                Color.gray.ignoresSafeArea()
                
                VStack{
                    Text("Chose Your Color ")
                        .font(.system(size: 30, weight: .semibold))
                    HStack{
                        ForEach(chooseColor, id: \.self){ color in
                            Circle()
                                .frame(width: 50, height: 100)
                                .foregroundColor(color)
                                .onTapGesture{
                                    choseColor = color
                                }
                            
                        }.padding()
                    }
                    
                    Text("What you write")
                        .font(.system(size: 20, weight: .semibold))
                    
                    
                    TextField("Enter word", text: $word)
                        .frame(width: 300, height: 50)
                        .padding()
                        .background(i)
                        .cornerRadius(10)
                        .onTapGesture {
                            ishai.toggle()
                            if ishai == true {
                                i = Color.white
                            } else{
                                i = Color.gray
                            }
                            
                        }
                     
                    
                    NavigationLink {
                        secondV(word: word, color: choseColor )
                    } label: {
                        Text("Save")
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(Color.green)
                            .cornerRadius(10)
                            .padding()
                            
                    }


                    
                }
            }
            .navigationTitle("My Dairy")
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
