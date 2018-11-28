//
//  ViewController.swift
//  ReactSwift
//
//  Created by GK on 2018/11/28.
//  Copyright © 2018年 com.gk. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        
        let vc = createhighScoreViewController()
        present(vc, animated: true)
    }
    
    func createHomeScreenViewController() -> UIViewController {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let rootView = RCTRootView(bridge: delegate.bridge!, moduleName: "HomeScreen", initialProperties: nil)
        let homeVC = UIViewController()
        homeVC.view = rootView
        return homeVC
    }
    func createhighScoreViewController() -> UIViewController {
        NSLog("Hello")
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RNHighScores",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        return vc
    }
}

