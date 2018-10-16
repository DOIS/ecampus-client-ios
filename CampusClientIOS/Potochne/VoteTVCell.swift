//
//  VoteTVCell.swift
//  CampusClientIOS
//
//  Created by mac on 08.10.2018.
//  Copyright © 2018 SINED. All rights reserved.
//

import UIKit
import UIDropDown

class VoteTVCell: UITableViewCell {
    
    @IBOutlet weak var prepodNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func nameOfPrepod(name: String) {
        prepodNameLabel.text = name
    }
    
    
    
    
    
}
