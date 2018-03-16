//
//  FlickrPhotoCell.swift
//  FlickrSearch
//
//  Created by Hamish Johnson on 2018-03-15.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import UIKit

class FlickrPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override var isSelected: Bool {
        didSet {
            imageView.layer.borderWidth = isSelected ? 10 : 0
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.borderColor = Global.themeColor.cgColor
        isSelected = false
    }
    
}
