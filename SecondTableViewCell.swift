//
//  SecondTableViewCell.swift
//  评论1
//
//  Created by 方瑾 on 2019/2/25.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    var newViewController: MainViewController?
    
    
    @IBOutlet weak var inputTextField: UITextField!
    
    
    @IBOutlet weak var secondImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    @IBAction func goButton(_ sender: UIButton) {
        info = inputTextField.text!
        switch num {
        case 0:
            picture.append((name: "houkin", message: info ))
        case 1:
            picture1.append((name: "houkin", message: info ))
        case 2:
            picture2.append((name: "houkin", message: info ))
        case 3:
            picture3.append((name: "houkin", message: info ))
        default:
            picture4.append((name: "houkin", message: info ))
        }
        inputTextField.text = ""
        newViewController?.commentTableView.reloadData()

    }
    

}
