//
//  PlaceCollectionViewCell.swift
//  COYI
//
//  Created by Rakesh on 12/8/16.
//  Copyright © 2016 sinergia. All rights reserved.
//

import UIKit

class PlaceCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var placeLabel: UILabel!
   
    @IBOutlet weak var imageView: UIImageView!
    override func layoutSubviews() {
        
    }
       override func awakeFromNib() {
        
        self.imageView.layer.cornerRadius = self.imageView.frame.size.width/2
        
        self.imageView.layer.masksToBounds = true
        super.awakeFromNib()
        // Initialization code
    }
    
    

}
