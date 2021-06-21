//
//  ExpandableCardViewController.swift
//  LearningAnims
//
//  Created by user200328 on 6/21/21.
//

import UIKit


class ExpandableCardViewController: UIViewController {

 
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = CardCollectionViewFlowLayout(itemSize: CardCollectionViewCell.cellSize)
        collectionView.decelerationRate = UIScrollView.DecelerationRate.fast
    }

}


// MARK: UICollectionView DataSource
extension ExpandableCardViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.deque(CardCollectionViewCell.self, for: indexPath)
        cell.configure(collectionView: collectionView, index: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = collectionView.cellForItem(at: indexPath)! as! CardCollectionViewCell
        selectedCell.toggle()
    }
}
