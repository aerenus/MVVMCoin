//
//  TableViewCell.swift
//  MVVMCoin
//
//  Created by Eren FAIKOGLU on 08.08.2020.
//  Copyright © 2020 Eren FAIKOGLU. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var coinName: UILabel!
    
    @IBOutlet weak var coinPrice: UILabel!
    
    @IBOutlet weak var last24h: UILabel!
    
    @IBOutlet weak var coinImg: UIImageView!
    
    @IBOutlet weak var rank: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
