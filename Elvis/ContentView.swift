//
//  ContentView.swift
//  Elvis
//
//  Created by Richard Gagg on 2/1/2026.
//

import SwiftUI

struct ContentView: View {
  @State private var message: String = ""
  @State private var image: String = ""
  
    var body: some View {
        VStack {
          Text("What's So Funny 'bout")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.purple)
          
          Spacer()
          
          Image(systemName: image)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
          
          Text(message)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.purple)
          
          Spacer()
          
          HStack {
            Button("Peace") {
              message = "Peace"
              image = "peacesign"
            }
            
            Button("Love") {
              message = "Love"
              image = "heart"
            }
            
            Button("Understanding") {
              message = "Understanding"
              image = "lightbulb"
            }
            
          }
          .buttonStyle(.glassProminent)
          .tint(.purple)
          
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
