//
//  InterestInitialApple.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 27..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class InterestsAppleInitial: UIViewController {
    
    @IBOutlet weak var InterestsImage: UIImageView!
    
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!

    var timer = NSTimer()
    var counter = 0
    
    override func viewWillAppear(animated: Bool) {
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.InterestsImage.transform = CGAffineTransformMakeScale(10, 10)
        self.InterestsImage.alpha = 0
        self.InterestsImage.layer.cornerRadius = 50.0
        self.InterestsImage.clipsToBounds = true
        
        iPhoneScreenSizes()
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.InterestsImage.alpha = 1
            self.InterestsImage.transform = CGAffineTransformMakeScale(1, 1)
            
        }), completion: nil)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(AppleDeviceiPadInitialViewController.finished), userInfo: nil, repeats: true)
        
    }
    
    func iPhoneScreenSizes(){
        let bounds = UIScreen.mainScreen().bounds
        let height = bounds.size.height
        
        switch height {
        case 480.0:
            
            InterestsImage.layer.cornerRadius = 25
            self.InterestsImage.clipsToBounds = true
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
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("Apple") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
    
}
