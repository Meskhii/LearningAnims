//
//  ChainedViewController.swift
//  LearningAnims
//
//  Created by user200328 on 6/21/21.
//

import UIKit

class ChainedViewController: UIViewController {

    @IBOutlet weak var cubeToAnimate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startAnimation()

    }
    
    private func startAnimation() {
        let start = self.cubeToAnimate.center

        UIView.animateKeyframes(withDuration: 5,
          delay: 0,
          options: [.calculationModeLinear, .repeat],
          animations: {
            UIView.addKeyframe(
              withRelativeStartTime: 0.25,
              relativeDuration: 0.25) {
                self.cubeToAnimate.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.maxY)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                self.cubeToAnimate.center = CGPoint(x: self.view.bounds.width, y: start.y)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.cubeToAnimate.center = start
            }
        })
    }
   

}
