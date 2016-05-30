//
//  ViewController.swift
//  CountDownLabel
//
//  Created by Charlin on 16/5/30.
//  Copyright © 2016年 Charlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: CountDownLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.start()
        countLabel.start()
        countLabel.countDownCompleteClosure = { [unowned self] in
        
            self.countLabel.start()
        }
        
    }
    
    deinit {countLabel.stop()}


}

