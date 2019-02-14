//
//  ContactInitial.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 22..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class ContactInitial: UIViewController {
    
    @IBOutlet weak var Icon: UIImageView!
    
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!

    
    var timer = NSTimer()
    var counter = 0
    
    
    override func viewWillAppear(animated: Bool) {
        Icon.transform = CGAffineTransformMakeScale(10, 10)
UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        Icon.alpha = 0
        self.Icon.layer.cornerRadius = 50.0
        self.Icon.clipsToBounds = true
        iPhoneScreenSizes()
        
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
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        UIView.animateWithDuration(1, animations: {
            self.Icon.alpha = 1
        })
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(EducationIntial.finished), userInfo: nil, repeats: true)
    }
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("Contact") as UIViewController
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
