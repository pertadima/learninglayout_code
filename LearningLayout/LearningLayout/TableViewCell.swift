//
//  TableViewCell.swift
//  LearningLayout
//
//  Created by Engineer on 4/9/18.
//  Copyright © 2018 Engineer. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell : UITableViewCell{
    var myLabel = UILabel()
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        myLabel.backgroundColor = UIColor.white
        self.contentView.addSubview(myLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myLabel.frame = CGRect(x: 20, y: 10, width: 100, height: 30)
    }
}


