//
//  ComposableArchitectureCounterAppTests.swift
//  ComposableArchitectureCounterAppTests
//
//  Created by Higashihara Yoki on 2021/05/21.
//

import ComposableArchitecture
import XCTest
@testable import ComposableArchitectureCounterApp

class ComposableArchitectureCounterAppTests: XCTestCase {
    
    func testCountUp() {
        let store = TestStore(
            initialState: AppState(count: 0),
            reducer: appReducer,
            environment: AppEnvironment()
        )
        
        store.assert(
            .send(.countUp) {
                $0.count = 1
            }
        )
    }
    
    func testCountDown() {
        let store = TestStore(
            initialState: AppState(count: 0),
            reducer: appReducer,
            environment: AppEnvironment()
        )
        
        store.assert(
            .send(.countDown) {
                $0.count = -1
            }
        )
    }
    
    func testCountReset() {
        let store = TestStore(
            initialState: AppState(count: 10),
            reducer: appReducer,
            environment: AppEnvironment()
        )
        
        store.assert(
            .send(.resetCount) {
                $0.count = 0
            }
        )
    }
}
