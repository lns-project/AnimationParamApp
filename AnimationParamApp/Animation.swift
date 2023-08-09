//
//  Animation.swift
//  AnimationParamApp
//
//  Created by Динара Шарафутдинова on 09.08.2023.
//

import Foundation

struct Animation: CustomStringConvertible {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
}
