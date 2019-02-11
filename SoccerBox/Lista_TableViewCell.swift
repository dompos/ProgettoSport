//
//  Lista_TableViewCell.swift
//  SoccerBox
//
//  Created by Domenico Posillipo on 11/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit

class Lista_TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        textLabel?.textColor = UIColor.white
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
