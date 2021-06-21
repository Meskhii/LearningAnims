//
//  ViewController.swift
//  LearningAnims
//
//  Created by user200328 on 6/21/21.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navigateToPopOut(_ sender: Any) {
        navigateTo(vcId: VCIds.popOutVC)
    }
    
    @IBAction func navigateToRotation(_ sender: Any) {
        navigateTo(vcId: VCIds.rotationVC)
    }
    
    @IBAction func navigateToExpandableCard(_ sender: Any) {
        navigateTo(vcId: VCIds.expandableCardVC)
    }
    
    @IBAction func navigateToChained(_ sender: Any) {
        navigateTo(vcId: VCIds.chainedVC)
    }
    
    private func navigateTo(vcId: String) {
        let sb = UIStoryboard(name: vcId, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: vcId)
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

