//
//  CheckResultButton.swift
//  GameSlider
//
//  Created by SERGEY VOROBEV on 06.08.2021.
//

import SwiftUI

struct CheckResultButton: View {
    @EnvironmentObject var gameManager: GameManager

    @State private var showResult = false
    
    var body: some View {
        Button(action: {
            showResult = true
        }, label: {
            Text("Проверь меня")
        })
        .setStyle(color: .purple)
        .alert(isPresented: $showResult) {
            Alert(
                title: Text("Ваш результат"),
                message: Text(gameManager.getResultText()),
                dismissButton: .default(
                    Text("OK")
                )
            )
        }
    }
}
