//
//  ParallaxCell.swift
//  parallaxProject
//
//  Created by West Kraemer on 10/24/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

   
    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // set up parallax code
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String) {
        itemImageView.image = image
        descriptionLabel.text = desc
    }

    func setUpParallax() {
        
    }

}
