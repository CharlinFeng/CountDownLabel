//
//  CountDownLabel.swift
//  CountDownLabel
//
//  Created by Charlin on 16/5/30.
//  Copyright © 2016年 Charlin. All rights reserved.
//

import UIKit

class CountDownLabel: UILabel {
    
    var prefix: String = ""

    /** 秒数 */
    var maxSecond: Int = 0 {didSet{maxSecond_private = maxSecond}}
    var maxSecond_private: Int = 0
    
    /** 当前秒数 */
    private var currentSecond: Int = 0
    
    var timer: NSTimer!

    override init(frame: CGRect) {super.init(frame: frame); viewprepare()}
    
    required init?(coder aDecoder: NSCoder) {super.init(coder: aDecoder); viewprepare()}
    
    func viewprepare(){
        text = prefix + "00:00"
    }
    
    
    var countDownCompleteClosure:(Void->Void)?
    
    deinit {print("deinit")}
}
