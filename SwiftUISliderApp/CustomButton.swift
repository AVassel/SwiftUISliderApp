//
//  CustomButton.swift
//  SwiftUISliderApp
//
//  Created by Anton Vassel on 29.05.2023.
//

import SwiftUI

struct CustomButton: View {
    @Binding var showAlert: Bool
    let title: String
    let currentScore: Int
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .padding()
            .alert("Your Score", isPresented: $showAlert, actions: {}) {
                Text("\(currentScore)")
            }
    }
    
    init(showAlert:  Binding<Bool> = .constant(false), title: String, currentScore: Int = 0, action: @escaping () -> Void) {
        self._showAlert = showAlert
        self.title = title
        self.currentScore = currentScore
        self.action = action
    }
    
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Проверь меня", action: {})
    }
}
