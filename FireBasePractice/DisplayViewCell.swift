//
//  DisplayViewCell.swift
//  FireBasePractice
//
//  Created by minal borole on 11/10/18.
//  Copyright © 2018 minal borole. All rights reserved.
//

import UIKit

class DisplayViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl1: UILabel!
    
    @IBOutlet weak var durationLbl1: UILabel!
    
    @IBOutlet weak var feesLbl1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
