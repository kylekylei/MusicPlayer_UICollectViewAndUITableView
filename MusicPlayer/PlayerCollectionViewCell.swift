//
//  PlayerCollectionViewCell.swift
//  MusicPlayer
//
//  Created by Kyle Lei on 2021/7/27.
//

import UIKit

class PlayerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView! {
        didSet{
            imageView.layer.cornerRadius = 16
            imageView.clipsToBounds = true
        }
    }
    
}
