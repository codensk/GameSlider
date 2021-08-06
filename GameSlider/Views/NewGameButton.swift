//
//  NewGameButton.swift
//  GameSlider
//
//  Created by SERGEY VOROBEV on 06.08.2021.
//

import SwiftUI

struct NewGameButton: View {
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        Button(action: {
            gameManager.startNewGame()
        }, label: {
            Text("Начать заново")
        })
        .setStyle(color: .green)
    }
}
