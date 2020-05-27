//
//  PhotoCollectionViewCell.swift
//  Photorama
//
//  Created by Joachim Goennheimer on 27.05.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

// import Foundation

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    var photoDescription: String?
    
    override var accessibilityTraits: UIAccessibilityTraits {
        get {
            return UIAccessibilityTraits(rawValue: super.accessibilityTraits.rawValue | UIAccessibilityTraits.image.rawValue)
        }
        set {
//            ignore attempts to set
        }
    }
    override var accessibilityLabel: String? {
        get {
            return photoDescription
        }
        set {
//            ignore attempts to set
        }
    }
    
    override var isAccessibilityElement: Bool {
        get {
            return true
        }
        set {
            super.isAccessibilityElement = newValue
        }
    }
    
    func update(with image: UIImage?) {
        if let imageToDisplay = image {
            spinner.stopAnimating()
            imageView.image = imageToDisplay
        } else {
            spinner.startAnimating()
            imageView.image = nil
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        update(with: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        update(with: nil)
    }
}
