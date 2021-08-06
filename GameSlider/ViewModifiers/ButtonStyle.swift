//
//  ButtonStyle.swift
//  GameSlider
//
//  Created by SERGEY VOROBEV on 06.08.2021.
//

import SwiftUI

struct ButtonStyle: ViewModifier {
    var color: Color = .green
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(minWidth: 140)
            )
    }
}

extension Button {
    func setStyle(color: Color) -> some View {
        modifier(ButtonStyle(color: color))
    }
}
