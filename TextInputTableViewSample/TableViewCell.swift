//
//  TableViewCell.swift
//  TextInputTableViewSample
//
//  Created by ogaoga on 2019/12/16.
//  Copyright © 2019 ogaoga.org. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
