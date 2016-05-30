//
//  CountDownLabel+Timer.swift
//  CountDownLabel
//
//  Created by Charlin on 16/5/30.
//  Copyright © 2016年 Charlin. All rights reserved.
//

import UIKit

extension CountDownLabel {

    func timerPrepare() -> NSTimer{
        
        let timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(timerRun), userInfo: nil, repeats: true)
        
        return timer
    }
    
    func timerRun(){
    
        maxSecond_private -= 1
        
        if maxSecond_private < 0 {timerValidate();countDownCompleteClosure?(); return}
        
        updateTimeCount()
    }
    
    func timerValidate(){
        timer.invalidate()
        timer = nil
    }
    
    
}
