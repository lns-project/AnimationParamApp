//
//  DataManager.swift
//  AnimationParamApp
//
//  Created by Динара Шарафутдинова on 09.08.2023.
//

import SpringAnimation

class DataManager {
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    func getRandomParam() -> Animation {
        Animation(name: animations.randomElement()?.rawValue ?? "pop",
                  curve: curves.randomElement()?.rawValue ?? "easeIn",
                  force: Double.random(in: 0.5...1.5),
                  duration: Double.random(in: 0.5...1.5),
                  delay: Double.random(in: 0.5...1.5)
        )
    }
}
