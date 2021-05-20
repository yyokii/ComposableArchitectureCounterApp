//
//  ComposableArchitectureCounterAppApp.swift
//  ComposableArchitectureCounterApp
//
//  Created by Higashihara Yoki on 2021/05/21.
//

import ComposableArchitecture
import SwiftUI

@main
struct ComposableArchitectureCounterAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(
                    initialState: AppState(count: 0),
                    reducer: appReducer,
                    environment: AppEnvironment()
                )
            )
        }
    }
}
