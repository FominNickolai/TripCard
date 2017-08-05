//
//  TripCollectionViewCell.swift
//  TripCard
//
//  Created by Fomin Mykola on 8/5/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

protocol TripCollectionCellDelegate: class {
    func didLikeButtonPressed(cell: TripCollectionViewCell)
}

class TripCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var totalDaysLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: TripCollectionCellDelegate?
        
    var isLiked: Bool = false {
        didSet {
            if isLiked {
                likeButton.setImage(UIImage(named: "heartfull"), for: .normal)
            } else {
                likeButton.setImage(UIImage(named: "heart"), for: .normal)
            }
        }
    }
    
    //Actions
    @IBAction func likeButtonTapped(sender: UIButton) {
        delegate?.didLikeButtonPressed(cell: self)
    }
}
