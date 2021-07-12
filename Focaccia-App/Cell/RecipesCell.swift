//
//  RecipesTableViewCell.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 03/07/2021.
//

import UIKit

class RecipesCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
