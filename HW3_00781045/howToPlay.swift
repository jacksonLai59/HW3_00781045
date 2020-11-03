//
//  howToPlay.swift
//  HW3_00781045
//
//  Created by User07 on 2020/11/3.
//

import SwiftUI

struct howToPlay: View {
    
    var body: some View {
        VStack{
            Text("How to Play?").font(.largeTitle).padding()
            Text("只要依照表單規定選填就可以囉！").font(.title3)
            NavigationLink(
                destination: inputEditor(inputData: InputData()),
                label: {
                    Text("        Play        ")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(40)
                        .foregroundColor(Color.white)
                        .padding(10)
                        .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.green, lineWidth: 5))
                }).offset(x:0,y:50)
        }
        
    }
}

struct howToPlay_Previews: PreviewProvider {
    static var previews: some View {
        howToPlay()
    }
}
