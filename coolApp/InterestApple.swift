//
//  InterestApple.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 26..
//  Copyright © 2016년 김준우. All rights reserved.
//


import UIKit

class InterestsApple : UIViewController {
    
    @IBOutlet weak var Icon: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!
    
    @IBOutlet weak var backBuuttton: UIButton!
    
    
    var timer = NSTimer()
    var counter = 0
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        
        self.Icon.layer.cornerRadius = 50.0
        self.Icon.clipsToBounds = true

        //self.textView.alpha = 0
        textView.transform = CGAffineTransformMakeTranslation(0, 500)
        iPhoneScreenSizes()
    }
    
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(EducationVC.finished), userInfo: nil, repeats: true)
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -700)
            
            
            self.Label.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
            
        }), completion: nil)
        
        
        
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.textView.transform = CGAffineTransformMakeTranslation(0, 700)
        }), completion: nil)
        
        
        
    }
    
    
    func iPhoneScreenSizes(){
        let bounds = UIScreen.mainScreen().bounds
        let height = bounds.size.height
        
        switch height {
        case 480.0:
            Icon.layer.cornerRadius = 25
            self.Icon.clipsToBounds = true
            
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
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -128)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -128)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            
        }), completion: nil)
        
    }
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("InterestsInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
        }
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        counter = 0
        timer.invalidate()
        self.removeFromParentViewController()
    }
    
    
}