//
//  AppleDeviceiPhone6S.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 26..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class AppleDeviceiPhone6S: UIViewController {
    
    @IBOutlet weak var iPhone6sImage: UIImageView!
    @IBOutlet weak var iPhone6slabel: UILabel!
    
    @IBOutlet weak var backBuuttton: UIButton!
    
    @IBOutlet weak var nextbutton: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    
    
    var timer = NSTimer()
    
    var counter = 0
    
    var Nexttimer = NSTimer()
    var Nextcounter = 0
    
    
    override func viewWillAppear(animated: Bool) {
        //self.iPadImage.transform = CGAffineTransformMakeScale(10, 10)
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.textView.contentOffset = CGPointMake(0, 0)
                
                
                self.iPhone6sImage.transform = CGAffineTransformMakeTranslation(0, -128)
                self.iPhone6slabel.transform = CGAffineTransformMakeTranslation(0, -128)
                self.textView.transform = CGAffineTransformMakeTranslation(0, 0)

                
                
            }), completion: nil)
            //self.iPadImage.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
    func addParallaxToView(vw: UIView) {
        let amount = 13
        
        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .TiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -amount
        horizontal.maximumRelativeValue = amount
        
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .TiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -amount
        vertical.maximumRelativeValue = amount
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        vw.addMotionEffect(group)
    }

    
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(AppleDeviceiMac.finished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.iPhone6sImage.transform = CGAffineTransformMakeTranslation(0, -700)
            self.iPhone6slabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.backBuuttton.alpha = 0
        }), completion: nil)
        
    }
    
    
    @IBAction func iPhone6S() {
        Nexttimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(AppleDeviceiMac.iPhone6sgo), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.nextbutton.alpha = 0
            self.iPhone6sImage.transform = CGAffineTransformMakeTranslation(0, -700)
            self.iPhone6slabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.backBuuttton.alpha = 0
        }), completion: nil)
        
    }
    
    
    func iPhone6sgo() {
        
        Nextcounter += 1
        
        if Nextcounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("AppleDeviceiPhone6SInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if Nextcounter == 2 {
            Nextcounter = 0
            Nexttimer.invalidate()
        }
    }
    
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("NewVC") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
        }
    }
    
}