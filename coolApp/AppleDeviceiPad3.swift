//
//  AppleDeviceiPad3.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 23..
//  Copyright © 2016년 김준우. All rights reserved.
//


import UIKit

class AppleDeviceiPadViewController: UIViewController {
    @IBOutlet weak var iPadImage: UIImageView!
    @IBOutlet weak var iPadlabel: UILabel!
    
    @IBOutlet weak var backBuuttton: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!

    var timer = NSTimer()
    var counter = 0
    
    var Nexttimer = NSTimer()
    var Nextcounter = 0

    
    override func viewWillAppear(animated: Bool) {
        //self.iPadImage.transform = CGAffineTransformMakeScale(10, 10)
        iPhoneScreenSizes()
        textView.transform = CGAffineTransformMakeTranslation(0, 500)

    }
    override func viewDidAppear(animated: Bool) {
        
UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.textView.contentOffset = CGPointMake(0, 0)
                
                
                self.iPadImage.transform = CGAffineTransformMakeTranslation(0, -128)
                self.iPadlabel.transform = CGAffineTransformMakeTranslation(0, -128)
                self.textView.transform = CGAffineTransformMakeTranslation(0, 0)

                
                
            }), completion: nil)
            //self.iPadImage.transform = CGAffineTransformMakeScale(1, 1)
        
        
        
        
    }
    
    
    
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(AppleDeviceiPadViewController.finished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.iPadImage.transform = CGAffineTransformMakeTranslation(0, -700)
            self.iPadlabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.backBuuttton.alpha = 0
        }), completion: nil)
        
    }
    
    
    @IBAction func iPhone5() {
        Nexttimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(AppleDeviceiPadViewController.iPHone5go), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.nextbutton.alpha = 0
            self.iPadImage.transform = CGAffineTransformMakeTranslation(0, -700)
            self.iPadlabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.backBuuttton.alpha = 0
        }), completion: nil)
        
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
    
    
    
    func iPHone5go() {
        
        Nextcounter += 1
        
        if Nextcounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("AppleDeviceiPhone5Initial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if Nextcounter == 2 {
            Nextcounter = 0
            Nexttimer.invalidate()
        }
        }

    
    func iPhoneScreenSizes(){
        let bounds = UIScreen.mainScreen().bounds
        let height = bounds.size.height
        
        switch height {
        case 480.0:
            
            
            constraintwidthicon.constant = 80
            constraintheighticon.constant = 120
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


}
