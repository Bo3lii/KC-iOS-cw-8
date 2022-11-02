//
//  secondV.swift
//  Day 8
//
//  Created by AWS on 11/2/22.
//

import SwiftUI

struct secondV: View {
    
    var word: String
    var color: Color
    
    var body: some View {
        ZStack{
            color.ignoresSafeArea()
            VStack{
                Text("\(word)")
            }
            
        }
    }
}

struct secondV_Previews: PreviewProvider {
    static var previews: some View {
        secondV(word: "hello", color: .green)
    }
}
