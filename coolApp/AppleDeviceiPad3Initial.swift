//
//  AppleDeviceiPad 3.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 23..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class AppleDeviceiPadInitialViewController: UIViewController {
    @IBOutlet weak var iPadImage: UIImageView!
    
    var timer = NSTimer()
    var counter = 0
    
    @IBOutlet var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet var constraintheighticon: NSLayoutConstraint!
    
    override func viewWillAppear(animated: Bool) {
        self.iPadImage.transform = CGAffineTransformMakeScale(10, 10)
    }
    override func viewDidAppear(animated: Bool) {
        
UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
           // timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(EducationIntial.finished), userInfo: nil, repeats: true)
            self.iPadImage.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(AppleDeviceiPadInitialViewController.finished), userInfo: nil, repeats: true)
        
        iPhoneScreenSizes()
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("AppleDeviceiPad") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
            
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
