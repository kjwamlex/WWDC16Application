//
//  AppleDeviceiPhone5.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 24..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class AppleDeviceiPhone5: UIViewController {
    
    @IBOutlet weak var iPhoneImage: UIImageView!
    @IBOutlet weak var iPhonelabel: UILabel!
    
    @IBOutlet weak var backBuuttton: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var nextbutton: UIButton!
    
    var timer = NSTimer()
    
    var counter = 0
    
    var Nexttimer = NSTimer()
    var Nextcounter = 0

    
    override func viewWillAppear(animated: Bool) {
        //self.iPadImage.transform = CGAffineTransformMakeScale(10, 10)
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        textView.transform = CGAffineTransformMakeTranslation(0, 500)

    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.textView.contentOffset = CGPointMake(0, 0)
                
                
                self.iPhoneImage.transform = CGAffineTransformMakeTranslation(0, -128)
                self.iPhonelabel.transform = CGAffineTransformMakeTranslation(0, -128)
                
                self.textView.transform = CGAffineTransformMakeTranslation(0, 0)

                
            }), completion: nil)
            //self.iPadImage.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        
    }
    
    
    
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(AppleDeviceiPhone5.finished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.iPhoneImage.transform = CGAffineTransformMakeTranslation(0, -700)
            self.iPhonelabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.backBuuttton.alpha = 0
        }), completion: nil)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
    
    
    @IBAction func iPhone5() {
        Nexttimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(AppleDeviceiPhone5.iMacgo), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.nextbutton.alpha = 0
            self.iPhoneImage.transform = CGAffineTransformMakeTranslation(0, -700)
            self.iPhonelabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.backBuuttton.alpha = 0
        }), completion: nil)
        
    }
    

    func iMacgo() {
        
        Nextcounter += 1
        
        if Nextcounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("AppleDeviceiMacInitial") as UIViewController
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
