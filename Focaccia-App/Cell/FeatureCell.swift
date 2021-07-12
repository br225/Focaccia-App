//
//  FeatureCell.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 10/07/2021.
//

import UIKit

class FeatureCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
