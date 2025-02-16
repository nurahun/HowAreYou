//
//  ContentView.swift
//  HowAreYou
//
//  Created by Nur Khadr on 2025-02-15.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .frame(height: 120)
                .minimumScaleFactor(0.5)
                .animation(.easeInOut(duration: 0.5), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.cyan)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                let messages: [String] = ["Hello Nur",
                                          "How are you?",
                                          "I hope you are well.",
                                          "I'm glad to see you.",
                                          "Have a great day!",
                                          "See you later Mr.Nur muhammad Khadr Yarkandi. how long have been in Canada ? how about your spouse ?"]
                message = messages[Int.random(in: 0...messages.count-1)]
//                messageNumber += 1
//                if messageNumber > messages.count-1 {
//                    messageNumber = 0
//                }
                
                imageName  = "image\(Int.random(in: 0...9))"
//                imageNumber += 1
//                
//                if imageNumber > 9 {
//                    imageNumber = 0
//                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
