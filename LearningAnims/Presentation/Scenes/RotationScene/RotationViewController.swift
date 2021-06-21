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
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        
        coordinator.animate(alongsideTransition: { [unowned self] _ in
                self.continueButton.alpha = 0
            self.pickAColorLabel.alpha = 0
            self.setupStackViewItems()
            self.showStackViewItems()
        }) { [unowned self] _ in
            self.view.backgroundColor = UIColor.white
        }
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { return .landscapeLeft }

    
    @IBAction func animateCard(_ sender: Any) {
        
        UIView.animate(withDuration: 1) {
            UIView.setAnimationsEnabled(true)
            UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
            self.continueButton.alpha = 0
            self.pickAColorLabel.alpha = 0
            self.setupStackViewItems()
            self.showStackViewItems()
        }
        
        
    }
    
    private func setupStackViewItems() {
        stackView.arrangedSubviews.forEach({$0.alpha = 0})
        stackView.arrangedSubviews.forEach({$0.transform = CGAffineTransform(rotationAngle: .pi)})
        stackView.transform = CGAffineTransform(scaleX: -1, y: 1)

    }
    
    private func showStackViewItems() {
        stackView.arrangedSubviews.forEach({$0.alpha = 1})
        stackView.arrangedSubviews.forEach({$0.transform = CGAffineTransform(scaleX: -1, y: 1) })
    }
    
}
