//
//  ContentView.swift
//  SwiftUISliderApp
//
//  Created by Anton Vassel on 24.05.2023.
//

import SwiftUI

let startValue = 50.0

struct ContentView: View {
    
    
    @State private var targetValue = Int.random(in: 1...100)
    @State private var currentValue = startValue
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            GameBlock(currentValue: $currentValue,
                 targetValue: targetValue,
                 alpha: calculateResult()
            )
            CustomButton(showAlert: $showAlert,
                         title: "Проверь меня",
                         currentScore: calculateResult(),
                         action: { showAlert = true }
            )
            CustomButton(title: "Начать заново") {
                targetValue = Int.random(in: 1...100)
                currentValue = startValue
            }
        }
        .padding()
    }
    
    private func calculateResult() -> Int {
        100 - abs(targetValue - lround(currentValue))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
