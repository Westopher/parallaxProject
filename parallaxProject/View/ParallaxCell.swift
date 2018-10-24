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
        setUpParallax()
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String) {
        itemImageView.image = image
        descriptionLabel.text = desc
    }

   func setUpParallax() {
    let min = CGFloat(-30)
    let max = CGFloat(30)
    
    let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
    xMotion.minimumRelativeValue = min
    xMotion.maximumRelativeValue = max
    
    let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
    yMotion.minimumRelativeValue = min
    yMotion.maximumRelativeValue = max
    
    let motionEffectGroup = UIMotionEffectGroup()
    motionEffectGroup.motionEffects = [xMotion, yMotion]
    
    itemImageView.addMotionEffect(motionEffectGroup)
    
    }

}
