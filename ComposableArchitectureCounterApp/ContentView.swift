//
//  ContentView.swift
//  ComposableArchitectureCounterApp
//
//  Created by Higashihara Yoki on 2021/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            
            HStack {
                Button(action: {
                    count -= 1
                }) {
                    Text("➖")
                        .padding()
                }
                
                Button(action: {
                    count += 1
                }) {
                    Text("➕")
                        .padding()
                }
            }
            
            Button(action: {
                count = 0
            }) {
                Text("🗑")
                    .padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
