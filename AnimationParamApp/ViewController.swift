//
//  ViewController.swift
//  AnimationParamApp
//
//  Created by Динара Шарафутдинова on 09.08.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {


    @IBOutlet var paramTextView: SpringTextView!
    @IBOutlet var runButton: UIButton!
    
    private var animation = DataManager().getRandomParam()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paramTextView.text = animation.description
        paramTextView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 10
    }

    @IBAction func paramButtonPressed(_ sender: UIButton) {
        
        paramTextView.animation = animation.name
        paramTextView.force = animation.force
        paramTextView.duration = animation.duration
        paramTextView.delay = animation.delay
        paramTextView.curve = animation.curve
        paramTextView.text = animation.description
        paramTextView.animate()
        
        animation = DataManager().getRandomParam()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

