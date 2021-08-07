//
//  PlayerTableViewCell.swift
//  MusicPlayer
//
//  Created by Kyle Lei on 2021/7/30.
//

import UIKit


class PlayerAlbumView: UIView{
    
    @IBOutlet var albumImage: UIImageView!{
        didSet{
            albumImage.layer.cornerRadius = 40
        }
    }
}

class PlayerTableViewCell: UITableViewCell {
    
    @IBOutlet var trackNum: UILabel!
    @IBOutlet var trackName: UILabel!
    @IBOutlet var trackTime: UILabel!
    


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
