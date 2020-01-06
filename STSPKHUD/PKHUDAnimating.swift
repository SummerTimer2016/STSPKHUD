//
//  PKHUDAnimatingContentView.swift
//  PKHUD
//
//  Created by Philip Kluz on 9/27/15.
//  Copyright (c) 2016 NSExceptional. All rights reserved.
//  Licensed under the MIT license.
//

import UIKit

@objc public protocol PKHUDAnimating {

     func startAnimation()
     func stopAnimation()
    //修改标题颜色
     func changeTitleLabelTextColor(textColor:UIColor)
    //修改标题字体
     func changeTitleLabelTextFont(textFont:UIFont)
    
    //修改副标题颜色
     func changeSubTitleLabelTextColor(textColor:UIColor)
    //修改副标题字体
     func changeSubTitleLabelTextFont(textFont:UIFont)
}
