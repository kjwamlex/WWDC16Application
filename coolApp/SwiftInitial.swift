//
//  SwiftInitial.swift
//  coolApp
//
//  Created by Joonwoo Kim on 2016. 4. 28..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class SwiftIntial: UIViewController {
    
    @IBOutlet weak var Icon: UIImageView!
    
    var timer = NSTimer()
    var counter = 0
    
    
    override func viewWillAppear(animated: Bool) {
        Icon.transform = CGAffineTransformMakeScale(10, 10)
        Icon.alpha = 0
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.Icon.layer.cornerRadius = 50.0
        self.Icon.clipsToBounds = true
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        UIView.animateWithDuration(1, animations: {
            
            self.Icon.alpha = 1
        })
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(SwiftIntial.finished), userInfo: nil, repeats: true)
    }
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("Swift") as UIViewController
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
