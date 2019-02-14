//
//  AppleDeviceiPhone5Initial.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 24..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class AppleDeviceiPhone5Initial: UIViewController {
    @IBOutlet weak var iPhoneImage: UIImageView!
    
    var timer = NSTimer()
    var counter = 0
    
    override func viewWillAppear(animated: Bool) {
        
UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.iPhoneImage.transform = CGAffineTransformMakeScale(10, 10)
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            // timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(EducationIntial.finished), userInfo: nil, repeats: true)
            self.iPhoneImage.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(AppleDeviceiPadInitialViewController.finished), userInfo: nil, repeats: true)
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("AppleDeviceiPhone5") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
            
        }
    }
    
}
