//
//  FirstTableViewCell.swift
//  评论1
//
//  Created by 方瑾 on 2019/2/25.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImage: UIImageView!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
