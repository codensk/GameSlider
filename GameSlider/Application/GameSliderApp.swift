//
//  GameSliderApp.swift
//  GameSlider
//
//  Created by SERGEY VOROBEV on 06.08.2021.
//

import SwiftUI

@main
struct GameSliderApp: App {
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(GameManager())
        }
    }
}
