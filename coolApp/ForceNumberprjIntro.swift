//
//  ForceNumberprjIntro.swift
//  coolApp
//
//  Created by Joonwoo Kim on 2016. 4. 24..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class ForceNumberprjIntro: UIViewController {

    @IBOutlet weak var Icon: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    
   // @IBOutlet var textView: UITextView!
    
    @IBOutlet weak var imageView: UIView!
    
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!
    
    @IBOutlet weak var spacebetweentwothings: NSLayoutConstraint!
    
    @IBOutlet weak var image1: UIButton!
    @IBOutlet weak var image2: UIButton!
    
    @IBOutlet weak var backBuuttton: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet var bugFix: UIView!
    
    
    var timer = NSTimer()
    var counter = 0
    
    
    override func viewWillAppear(animated: Bool) {
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.image1.transform = CGAffineTransformMakeScale(0, 0)
        self.image2.transform = CGAffineTransformMakeScale(0, 0)
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)

        self.Icon.layer.cornerRadius = 50.0
        self.Icon.clipsToBounds = true
        imageView.transform = CGAffineTransformMakeTranslation(0, 500)
        // self.textView.alpha = 0
        textView.transform = CGAffineTransformMakeTranslation(0, 500)
        iPhoneScreenSizes()
    }
    
    
    @IBAction func getimage1() {
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.backBuuttton.alpha = 0
            self.image1.transform = CGAffineTransformMakeScale(1, 1)
            self.image1.alpha = 1
            self.imageView.alpha = 0
            self.Icon.alpha = 0
            self.textView.alpha = 0
            self.Label.alpha = 0
            self.bugFix.alpha = 0
            }, completion: nil)
    }
    
    
    

    
    @IBAction func getimage2() {
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.backBuuttton.alpha = 0
            self.image2.transform = CGAffineTransformMakeScale(1, 1)
            self.image2.alpha = 1
            self.imageView.alpha = 0
            self.Icon.alpha = 0
            self.textView.alpha = 0
            self.Label.alpha = 0
            self.bugFix.alpha = 0
            }, completion: nil)
    }
    
    
    
    @IBAction func getbackimage2() {
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.image2.alpha = 0
            self.backBuuttton.alpha = 1
            self.image2.transform = CGAffineTransformMakeScale(0.00000000001, 0.00000000001)
            self.imageView.alpha = 1
            self.bugFix.alpha = 1
            self.Icon.alpha = 1
            self.textView.alpha = 1
            self.Label.alpha = 1
            
            }, completion: nil)
    }
    
    @IBAction func getbackimage1() {
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.image1.alpha = 0
            self.backBuuttton.alpha = 1
            self.image1.transform = CGAffineTransformMakeScale(0.00000000001, 0.00000000001)
            self.bugFix.alpha = 1
            self.imageView.alpha = 1
            self.Icon.alpha = 1
            self.textView.alpha = 1
            self.Label.alpha = 1
            
            }, completion: nil)
    }
    
    
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target:self, selector: #selector(EducationVC.finished), userInfo: nil, repeats: true)
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.image1.alpha = 0
            self.image2.alpha = 0

            
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -700)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -700)
            self.imageView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
            
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
            //self.spacebetweentwothings.constant = -100
        default:
            print("not an iPhone")
            
        }
        
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.textView.contentOffset = CGPointMake(0, 0)
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -128)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -128)
            self.imageView.transform = CGAffineTransformMakeTranslation(0, 0)
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
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ProjectsInitial") as UIViewController
            //self.dismissViewControllerAnimated(true, completion: nil)
            self.removeFromParentViewController()
            self.presentViewController(vc, animated: false, completion: nil)
            
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

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
