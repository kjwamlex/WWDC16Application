//
//  EducationVC.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 21..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class EducationVC : UIViewController {
    
    @IBOutlet weak var EdIcon: UIImageView!
    
    @IBOutlet weak var EducationLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!
    
    @IBOutlet weak var spacebetweentwothings: NSLayoutConstraint!
    @IBOutlet weak var backBuuttton: UIButton!

    
    var timer = NSTimer()
    var counter = 0
    
    
    override func viewWillAppear(animated: Bool) {
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        
        self.EdIcon.layer.cornerRadius = 50.0
        self.EdIcon.clipsToBounds = true
       // self.textView.alpha = 0
        textView.transform = CGAffineTransformMakeTranslation(0, 500)
        iPhoneScreenSizes()
    }
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target:self, selector: #selector(EducationVC.finished), userInfo: nil, repeats: true)
       
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.EdIcon.transform = CGAffineTransformMakeTranslation(0, -700)
            self.EducationLabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0

        }), completion: nil)

        
        
        
        
    }
    
    
    func iPhoneScreenSizes(){
        let bounds = UIScreen.mainScreen().bounds
        let height = bounds.size.height
        
        switch height {
        case 480.0:
            EdIcon.layer.cornerRadius = 25
            self.EdIcon.clipsToBounds = true

            constraintwidthicon.constant = 50
            constraintheighticon.constant = 50
            print("iPhone 3,4")
        case 568.0:
            print("iPhone 5")
        case 667.0:
            print("iPhone 6")
        case 736.0:
            print("iPhone 6+")
            self.spacebetweentwothings.constant = -100
        default:
            print("not an iPhone")
            
        }
        
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.textView.contentOffset = CGPointMake(0, 0)
            self.EdIcon.transform = CGAffineTransformMakeTranslation(0, -128)
            self.EducationLabel.transform = CGAffineTransformMakeTranslation(0, -128)
            
            self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.textView.alpha = 1
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
    
    
    override func viewWillDisappear(animated: Bool) {
        counter = 0
        timer.invalidate()
        self.removeFromParentViewController()
    }
    
    
}