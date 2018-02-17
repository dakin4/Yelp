//
//  BuisnessCell.swift
//  Yelp
//
//  Created by David King on 2/16/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BuisnessCell: UITableViewCell {

    @IBOutlet weak var thumbView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var reviewCountLabel: UILabel!
    
    @IBOutlet weak var ratingImageView: UIImageView!
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    var business: Business! {
        didSet {
            
            nameLabel.text = business.name
            thumbView.setImageWith(business.imageURL!)
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewCountLabel.text = "\(business.reviewCount!)Reviews"
            ratingImageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbView.layer.cornerRadius = 3
        
        thumbView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
