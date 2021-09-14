//
//  CustomHeader.swift
//  TableView
//
//  Created by 김지호 on 2021/09/14.
//  Copyright © 2021 Keun young Kim. All rights reserved.
//

import UIKit

class CustomHeaderView: UITableViewHeaderFooterView {

    
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var countLabel : UILabel!
    @IBOutlet weak var customBackgroundView : UIView!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
