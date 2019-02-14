//
//  AboutmeLoading.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 20..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class aboutMeLoading : UIViewController {
    
    @IBOutlet var myFace: UIImageView!
    
    var timer = NSTimer()
    var counter = 0

    
    override func viewWillAppear(animated: Bool) {
        myFace.transform = CGAffineTransformMakeScale(10, 10)

        myFace.alpha = 0
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.myFace.layer.cornerRadius = 50.0
        self.myFace.clipsToBounds = true
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({

            self.myFace.transform = CGAffineTransformMakeScale(1, 1)
        }), completion: nil)
        UIView.animateWithDuration(1, animations: {
            
            self.myFace.alpha = 1

            
        })
        
    timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: #selector(aboutMeLoading.finished), userInfo: nil, repeats: true)
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("AboutMe") as UIViewController
        self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()

        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
        }
    }
}
