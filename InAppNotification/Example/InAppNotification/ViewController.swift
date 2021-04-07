//
//  ViewController.swift
//  InAppNotification
//
//  Created by manish-practo on 04/07/2021.
//  Copyright (c) 2021 manish-practo. All rights reserved.
//

import UIKit
import InAppNotification

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        InAppNotification.shared.show(on: self,
                                      title: "Lorem Ipsum Dolor!",
                                      subTitle: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                                      type: .info)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

