//
//  CustomAccessoryTableViewCell.swift
//  TableView
//
//  Created by 김지호 on 2021/09/13.
//  Copyright © 2021 Keun young Kim. All rights reserved.
//

import UIKit

class CustomAccessoryTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let v = UIImageView(image: UIImage(systemName: "star"))
        accessoryView = v // 악세사리뷰에 이미지뷰넣기
//        editingAccessoryView 수정엑세서리뷰는 여기서 처리
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
