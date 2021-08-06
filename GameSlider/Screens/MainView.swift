//
//  MainView.swift
//  GameSlider
//
//  Created by SERGEY VOROBEV on 06.08.2021.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var gameManager: GameManager

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .blur(radius: 6, opaque: true)
            
            VStack(spacing: 30) {
        
                GameTitle(title: "Подвиньте слайдер как можно ближе к \(gameManager.targetValue)")
                
                GameSlider(
                    sliderValue: $gameManager.sliderValue,
                    sliderThumbAlpha: gameManager.computeScore())
                
                CheckResultButton()
                
                NewGameButton()
            }
            .padding()
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(GameManager())
    }
}

