//
//  GameManager.swift
//  GameSlider
//
//  Created by SERGEY VOROBEV on 06.08.2021.
//
import Combine
import SwiftUI

final class GameManager: ObservableObject {    
    @Published var sliderValue: Int = 20
    @Published var targetValue = Int.random(in: 1...100)
    
    func startNewGame() {
        sliderValue = Int.random(in: 1...100)
        targetValue = Int.random(in: 1...100)
    }
    
    func computeScore() -> Int {
        let difference = abs(targetValue - sliderValue)
        return 100 - difference
    }
    
    func getResultText() -> String {
        var hotColdText = "Молодец!"
        
        switch computeScore() {
        case 0...50:
            hotColdText = "Холодно"
        case 51...80:
            hotColdText = "Тепло"
        case 81...99:
            hotColdText = "Жарко"
        default:
            break
        }
        
        let text = "\(sliderValue)\n\(hotColdText)"
        
        return text
    }
}
