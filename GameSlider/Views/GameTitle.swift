//
//  GameTitle.swift
//  GameSlider
//
//  Created by SERGEY VOROBEV on 06.08.2021.
//

import SwiftUI

struct GameTitle: View {
    var title: String = ""
    
    var body: some View {
        Text(title)
            .font(.subheadline)
    }
}
