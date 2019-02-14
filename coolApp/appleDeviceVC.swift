//
//  appleDeviceVC.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 23..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit


class appleDevices : UIViewController {
    
    @IBOutlet weak var myFace: UIImageView!
    
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    @IBOutlet weak var textView: UIView!
    
    @IBOutlet weak var constraint: NSLayoutConstraint!
    
    @IBOutlet weak var backBuuttton: UIButton!
    
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!
    
    
    var timer = NSTimer()
    var counter = 0
    var NextTimer = NSTimer()
    var Nextcounter = 0

    
    
    override func viewWillAppear(animated: Bool) {
UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.myFace.layer.cornerRadius = 50.0
        self.myFace.clipsToBounds = true
        // self.textView.alpha = 0
        textView.transform = CGAffineTransformMakeTranslation(0, 500)
        
        iPhoneScreenSizes()
    }
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(appleDevices.finished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.myFace.transform = CGAffineTransformMakeTranslation(0, -700)
            self.aboutMeLabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
        }), completion: nil)

    }
    
    
    
    
    func iPhoneScreenSizes(){
        let bounds = UIScreen.mainScreen().bounds
        let height = bounds.size.height
        
        switch height {
        case 480.0:
            
            myFace.layer.cornerRadius = 25
            self.myFace.clipsToBounds = true
            
            constraintwidthicon.constant = 50
            constraintheighticon.constant = 50
            print("iPhone 3,4")
        case 568.0:
            print("iPhone 5")
        case 667.0:
            print("iPhone 6")
        case 736.0:
            print("iPhone 6+")
            
        default:
            print("not an iPhone")
            
        }
        
        
    }

    
    @IBAction func goNext() {
        
        NextTimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(appleDevices.Next), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.myFace.transform = CGAffineTransformMakeTranslation(0, -700)
            self.aboutMeLabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 700)
            
            self.backBuuttton.alpha = 0
            
        }), completion: nil)

    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            //self.textView.contentOffset = CGPointMake(0, 0)
            self.myFace.transform = CGAffineTransformMakeTranslation(0, -128)
            self.aboutMeLabel.transform = CGAffineTransformMakeTranslation(0, -128)
            
            
            
        }), completion: nil)
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            //self.textView.alpha = 1
            // self.constraint.constant = -100
        }), completion: nil)
        
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
    
    func Next() {
        
        Nextcounter += 1
        
        if Nextcounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("AppleDeviceiPadInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if Nextcounter == 2 {
            Nextcounter = 0
            NextTimer.invalidate()
        }
    }
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
    
    
}
