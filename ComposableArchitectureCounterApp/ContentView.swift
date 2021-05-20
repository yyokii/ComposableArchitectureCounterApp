//
//  ContentView.swift
//  ComposableArchitectureCounterApp
//
//  Created by Higashihara Yoki on 2021/05/21.
//

import Combine
import ComposableArchitecture
import SwiftUI

// MARK: State

struct AppState: Equatable {
    var count: Int = 0
}

// MARK: Action

enum AppAction: Equatable {
    case countUp
    case countDown
    case resetCount
}

// MARK: Environment

struct AppEnvironment {}

// MARK: Reducer

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in
  switch action {
  case .countDown:
    state.count -= 1
    return .none
  case .countUp:
    state.count += 1
    return .none
  case .resetCount:
    state.count = 0
    return .none
  }
}

// MARK: View

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
