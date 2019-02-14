//
//  AppleDeviceiMacInitial.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 25..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class AppleDeviceiMacInitial: UIViewController {
    @IBOutlet weak var iMacImage: UIImageView!
    
    var timer = NSTimer()
    var counter = 0
    
    override func viewWillAppear(animated: Bool) {
        
UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.iMacImage.transform = CGAffineTransformMakeScale(20, 20)
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            // timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(EducationIntial.finished), userInfo: nil, repeats: true)
            self.iMacImage.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(AppleDeviceiPadInitialViewController.finished), userInfo: nil, repeats: true)
    }
    
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("AppleDeviceiMac") as UIViewController
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
