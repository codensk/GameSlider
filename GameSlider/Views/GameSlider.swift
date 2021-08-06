//
//  GameSlider.swift
//  GameSlider
//
//  Created by SERGEY VOROBEV on 06.08.2021.
//

import SwiftUI

struct GameSlider: View {
    @Binding var sliderValue: Int
    
    var sliderThumbAlpha: Int
    
    var body: some View {
        HStack {
            Text("0")
            
            Slider(
                value: $sliderValue,
                alpha: sliderThumbAlpha
            )
            
            Text("100")
        }
    }
}

struct GameSlider_Previews: PreviewProvider {
    static var previews: some View {
        GameSlider(sliderValue: .constant(20), sliderThumbAlpha: 1)
    }
}
