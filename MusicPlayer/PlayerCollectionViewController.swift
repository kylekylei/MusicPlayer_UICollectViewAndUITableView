//
//  PlayerCollectionViewController.swift
//  MusicPlayer
//
//  Created by Kyle Lei on 2021/7/27.
//

import UIKit

private let reuseIdentifier = "Cell"

class PlayerCollectionViewController: UICollectionViewController {

    func configureCellSize() {
        let itemSpace:CGFloat = 25
        let columnCount:CGFloat = 2
        
        let flowlayout = collectionViewLayout as? UICollectionViewFlowLayout
        flowlayout?.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 0, right: 16)
        
        let width = floor((collectionView.bounds.width - itemSpace * (columnCount-1) - 16 * 2) / columnCount)
        flowlayout?.itemSize = CGSize(width: width, height: width)
        flowlayout?.estimatedItemSize = .zero
        flowlayout?.minimumInteritemSpacing = itemSpace
        flowlayout?.minimumLineSpacing = itemSpace
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCellSize()
        collectionView.backgroundColor = UIColor(displayP3Red: 25/255, green: 25/255, blue: 25/255, alpha: 1)


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        

        // Do any additional setup after loading the view.
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return 18
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(PlayerCollectionViewCell.self)", for: indexPath) as! PlayerCollectionViewCell
        
        cell.imageView.image = UIImage(named: "pic\(indexPath.item)")
    
        // Configure the cell
    
        return cell
    }

   
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
