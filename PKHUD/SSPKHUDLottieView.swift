//
//  SSPKHUDLottieView.swift
//  TestView
//
//  Created by Shine on 2020/1/6.
//  Copyright © 2020 Shine. All rights reserved.
//

import UIKit
import STSPKHUD
import Lottie

enum SSPKHUDLottieViewType:Int {
    case success
    case error
}

class SSPKHUDLottieView: PKHUDSquareBaseView, PKHUDAnimating {
    
     fileprivate let lottieImageView: AnimationView = {
         let imageView = AnimationView()
         imageView.alpha = 0.85
         imageView.clipsToBounds = true
         imageView.contentMode = .scaleAspectFit
         return imageView
     }()
    
    
    public init(title: String? = nil,
                subtitle: String? = nil,
                lottieImageJSON:String? = nil ,
                lottieViewShowaType:SSPKHUDLottieViewType? = nil) {
        super.init(title: title, subtitle: subtitle)
        self.addSubview(self.lottieImageView)
        if lottieViewShowaType == nil {
            switch lottieViewShowaType! {
                case .success:
                    self.lottieImageView.animation = Animation.named("13499-2x20-at-croqodeal-sticker-0", bundle: Bundle.main, subdirectory: nil, animationCache: nil)
                case .error:
                    self.lottieImageView.animation = Animation.named("13539-sign-for-error-or-explanation-alert", bundle: Bundle.main, subdirectory: nil, animationCache: nil)
            }
        }else{
            self.lottieImageView.animation = Animation.named(lottieImageJSON!, bundle: Bundle.main, subdirectory: nil, animationCache: nil)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func startAnimation() {
        self.lottieImageView.play(fromFrame: 0.0, toFrame: 1.0, loopMode: LottieLoopMode.playOnce) { (isFinished) in
            
        }
    }

    public func stopAnimation() {
        self.lottieImageView.stop()
    }
    
    public func changeTitleLabelTextColor(textColor: UIColor) {
        self.titleLabel.textColor = textColor
    }
    
    public func changeTitleLabelTextFont(textFont: UIFont) {
        self.titleLabel.font = textFont
    }
    
    public func changeSubTitleLabelTextColor(textColor: UIColor) {
        self.subtitleLabel.textColor = textColor
    }
    
    public func changeSubTitleLabelTextFont(textFont: UIFont) {
        self.subtitleLabel.font = textFont
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.lottieImageView.frame = self.imageView.frame
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
