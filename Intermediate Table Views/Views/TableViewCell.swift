//
//  TableViewCell.swift
//  Intermediate Table Views
//
//  Created by Vladimir Shevtsov on 01.12.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel:  UILabel!
    @IBOutlet weak var descLabel:  UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
