//
//  SampleView.swift
//  ReactSwift
//
//  Created by GK on 2018/11/28.
//  Copyright © 2018年 com.gk. All rights reserved.
//

import UIKit

class SampleView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        label.text = "This is swift"
        addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

}
