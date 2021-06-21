//
//  RotationsViewController.swift
//  LearningAnims
//
//  Created by user200328 on 6/21/21.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var pickAColorLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    
    @IBOutlet weak var includeCashTagLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var cashTagSwitch: UISwitch!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStackViewItems()
    }
    
    @IBAction func animateCard(_ sender: Any) {
        
        UIView.animate(withDuration: 2) {
            self.imageView.transform = CGAffineTransform(rotationAngle: .pi / 2)
            
            self.continueButton.alpha = 0
            self.pickAColorLabel.alpha = 0
          
            self.showStackViewItems()
        }
        
    }
    
    private func setupStackViewItems() {
        stackView.arrangedSubviews.forEach({$0.alpha = 0})
        stackView.arrangedSubviews.forEach({$0.transform = CGAffineTransform(rotationAngle: .pi / 2)})
    }
    
    private func showStackViewItems() {
        stackView.arrangedSubviews.forEach({$0.alpha = 1})
    }
    
}
