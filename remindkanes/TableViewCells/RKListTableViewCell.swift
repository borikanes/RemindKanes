//
//  RKListTableViewCell.swift
//  remindkanes
//
//  Created by Bori Oludemi on 12/16/17.
//  Copyright © 2017 borikanes. All rights reserved.
//

import UIKit

class RKListTableViewCell: UITableViewCell {
    @IBOutlet var todoTitle: UILabel!
    @IBOutlet var checkedButton: UIButton!
    @IBOutlet var todoDetailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
