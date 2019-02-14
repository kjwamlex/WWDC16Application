//
//  AppleDeviceiMac.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 26..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class AppleDeviceiMac: UIViewController {
    
    @IBOutlet weak var iMacImage: UIImageView!
    @IBOutlet weak var iMaclabel: UILabel!
    
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
        textView.transform = CGAffineTransformMakeTranslation(0, 500)

    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.textView.contentOffset = CGPointMake(0, 0)
                
                
                self.iMacImage.transform = CGAffineTransformMakeTranslation(0, -128)
                self.iMaclabel.transform = CGAffineTransformMakeTranslation(0, -128)
                self.textView.transform = CGAffineTransformMakeTranslation(0, 0)

                
                
            }), completion: nil)
            //self.iPadImage.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        
    }
    
    
    
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(AppleDeviceiMac.finished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.iMacImage.transform = CGAffineTransformMakeTranslation(0, -700)
            self.iMaclabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.backBuuttton.alpha = 0
        }), completion: nil)
        
    }
    
    
    @IBAction func iPhone6S() {
        Nexttimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(AppleDeviceiMac.iPhone6sgo), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.nextbutton.alpha = 0
            self.iMacImage.transform = CGAffineTransformMakeTranslation(0, -700)
            self.iMaclabel.transform = CGAffineTransformMakeTranslation(0, -700)
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
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
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