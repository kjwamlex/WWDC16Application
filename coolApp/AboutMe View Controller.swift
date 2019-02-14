//
//  AboutMe View Controller.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 20..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class aboutMe : UIViewController {
    
    @IBOutlet var myFace: UIImageView!
    
    @IBOutlet var aboutMeLabel: UILabel!
    
    @IBOutlet var textView: UITextView!
    
    @IBOutlet var constraint: NSLayoutConstraint!
    
    @IBOutlet var backBuuttton: UIButton!
    
    var timer = NSTimer()
    var counter = 0

    
    override func viewWillAppear(animated: Bool) {
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.myFace.layer.cornerRadius = 50.0
        self.myFace.clipsToBounds = true
        // self.textView.alpha = 0
        textView.transform = CGAffineTransformMakeTranslation(0, 500)
    }
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(aboutMe.finished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.myFace.transform = CGAffineTransformMakeTranslation(0, -500)
            self.aboutMeLabel.transform = CGAffineTransformMakeTranslation(0, -500)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.backBuuttton.alpha = 0
        }), completion: nil)
        
 
        

    }

    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.textView.contentOffset = CGPointMake(0, 0)
            self.myFace.transform = CGAffineTransformMakeTranslation(0, -128)
            self.aboutMeLabel.transform = CGAffineTransformMakeTranslation(0, -128)
            
            
            
        }), completion: nil)
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            //self.textView.alpha = 1
           // self.constraint.constant = -100
        }), completion: nil)

    }
    
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
        self.textView.delegate = nil

    }
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("NewVC") as UIViewController
            self.removeFromParentViewController()

            self.presentViewController(vc, animated: false, completion: nil)
        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
        }
    }



}