//
//  OnboardingCell.swift
//  NRCOnboarding
//
//  Created by bibiga on 1/27/24.
//

import UIKit

class OnboardingCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailimageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(_ message: OnboardingMessage) {
        thumbnailimageView.image = UIImage(named: message.imageName)
        titleLabel.text = message.title
        descriptionLabel.text = message.description
    }
}
