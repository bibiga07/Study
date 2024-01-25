//
//  FeedCell.swift
//  InstaSearchView
//
//  Created by bibiga on 1/25/24.
//

import UIKit

class FeedCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailimageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailimageView.image = nil
    }
    
    func configure(_ imageName: String) {
        thumbnailimageView.image = UIImage(named: imageName)
    }
}
