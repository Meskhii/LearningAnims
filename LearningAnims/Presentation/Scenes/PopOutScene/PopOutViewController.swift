//
//  PopOutViewController.swift
//  LearningAnims
//
//  Created by user200328 on 6/21/21.
//

import UIKit

class PopOutViewController: UIViewController {

    @IBOutlet weak var popOutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureButton()
    }
    
    private func configureButton() {
        popOutButton.layer.cornerRadius = 20
    }
    
    @IBAction func popOutButton(_ sender: Any) {
        
        UIView.animate(
            withDuration: 5, delay: 0.2, usingSpringWithDamping: 0.55, initialSpringVelocity: 3,
            options: .curveEaseOut, animations: {
                self.popOutButton.alpha = 0
                self.popOutButton.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }, completion: nil)
        
    }
    
}
