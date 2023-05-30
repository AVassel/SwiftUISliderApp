//
//  GameBlock.swift
//  SwiftUISliderApp
//
//  Created by Anton Vassel on 26.05.2023.
//

import SwiftUI

struct GameBlock: View {
    @Binding var currentValue: Double
    
    let targetValue: Int
    let alpha: Int
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                CustomSlider(value: $currentValue,
                             alpha: alpha
                )
                Text("100")
            }
            .padding()
        }
    }
}

struct GameBlock_Previews: PreviewProvider {
    static var previews: some View {
        GameBlock(currentValue: .constant(50),
                  targetValue: 100,
                  alpha: 100
        )
    }
}
