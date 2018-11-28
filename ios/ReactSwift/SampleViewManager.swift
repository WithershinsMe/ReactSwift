//
//  SampleViewManager.swift
//  ReactSwift
//
//  Created by GK on 2018/11/28.
//  Copyright © 2018年 com.gk. All rights reserved.
//

import Foundation
import React

@objc(SampleViewSwift)
class SampleViewManager: RCTViewManager {
    override func view() -> UIView! {
        return SampleView()
    }
    
    override var methodQueue: DispatchQueue! {
        return DispatchQueue.main
    }
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
}
