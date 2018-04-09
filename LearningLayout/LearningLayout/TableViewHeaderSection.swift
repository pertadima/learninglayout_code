//
//  TableViewHeaderSection.swift
//  LearningLayout
//
//  Created by Engineer on 4/9/18.
//  Copyright © 2018 Engineer. All rights reserved.
//

import Foundation
import UIKit

class TableViewHeaderSection: UITableViewHeaderFooterView {
    var myLabel = UILabel()
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        myLabel.backgroundColor = UIColor.white
        self.contentView.addSubview(myLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myLabel.frame = CGRect(x: 20, y: 10, width: 100, height: 30)
    }
}
