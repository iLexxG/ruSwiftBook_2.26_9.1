//
//  Animation.swift
//  RandomSpringAnimation
//
//  Created by Alex Golyshkov on 05.04.2022.
//

import Spring

struct Animation {
    var animationPreset = ""
    var animationCurve = ""
    var animationForce = 0.0
    var animationDuration = 0.0
    var animationDelay = 0.0
    
    mutating func getRandomAnimation() {
        animationPreset = Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        animationCurve = Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? ""
        animationForce = Double.random(in: 0.0...1.5)
        animationDuration = Double.random(in: 0.5...2.0)
        animationDelay = Double.random(in: 0.0...1.0)
    }
}
