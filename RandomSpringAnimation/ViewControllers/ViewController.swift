//
//  ViewController.swift
//  RandomSpringAnimation
//
//  Created by Alex Golyshkov on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var springAnimationLabel: UILabel!
    @IBOutlet var springAnimationView: SpringView!
    
    private var currentAnimation = Animation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentAnimation.getRandomAnimation()
        updateSpringAnimationLabelText()
    }
    
    @IBAction func runSpringAnimation(_ sender: UIButton) {
        springAnimationView.animation = currentAnimation.animationPreset
        springAnimationView.curve = currentAnimation.animationCurve
        springAnimationView.force = currentAnimation.animationForce
        springAnimationView.duration = currentAnimation.animationDuration
        springAnimationView.delay = currentAnimation.animationDelay
        springAnimationView.animate()
        
        updateSpringAnimationLabelText()
        currentAnimation.getRandomAnimation()
        
        sender.setTitle("Run \(currentAnimation.animationPreset)", for: .normal)
    }
    
    private func updateSpringAnimationLabelText() {
        springAnimationLabel.text = """
            preset: \(currentAnimation.animationPreset)
            curve: \(currentAnimation.animationCurve)
            force: \(String(format: "%.2f", currentAnimation.animationForce))
            duration: \(String(format: "%.2f", currentAnimation.animationDuration))
            delay: \(String(format: "%.2f", currentAnimation.animationDelay))
        """
    }
}
