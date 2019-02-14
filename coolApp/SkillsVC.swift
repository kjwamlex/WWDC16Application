//
//  SkillsVC.swift
//  coolApp
//
//  Created by Joonwoo Kim on 2016. 5. 1..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit
class SkillsViewController: UIViewController {
    
    @IBOutlet var imageICOn: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var firstView: UIView!
    @IBOutlet var secondView: UIView!
    @IBOutlet var thirdView: UIView!
    @IBOutlet weak var backBuuttton: UIButton!
    
    var timer: NSTimer!
    
    var counter = 0
    
    override func viewWillAppear(animated: Bool) {
        self.firstView.transform = CGAffineTransformMakeTranslation(0, 700)
                self.secondView.transform = CGAffineTransformMakeTranslation(0, 700)
                self.thirdView.transform = CGAffineTransformMakeTranslation(0, 700)
        
        self.imageICOn.layer.cornerRadius = 50.0
        self.imageICOn.clipsToBounds = true
        self.backBuuttton.alpha = 0
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        self.imageICOn.transform = CGAffineTransformMakeTranslation(0, -300)
        self.label.transform = CGAffineTransformMakeTranslation(0, -300)

    }
    
    
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(SkillsViewController.finished), userInfo: nil, repeats: true)
        
        /*
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.imageICOn.transform = CGAffineTransformMakeTranslation(0, -700)
            self.label.transform = CGAffineTransformMakeTranslation(0, -700)
           // self.textView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.imageICOn.transform = CGAffineTransformMakeTranslation(0, -300)
            self.label.transform = CGAffineTransformMakeTranslation(0, -300)

            
            self.firstView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.secondView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.thirdView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
            
        }), completion: nil)
        
        */
        UIView.animateWithDuration(0.75, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.imageICOn.transform = CGAffineTransformMakeTranslation(0, -700)
            self.firstView.transform = CGAffineTransformMakeTranslation(0, 600)
            self.label.transform = CGAffineTransformMakeTranslation(0, -700)
            
            self.backBuuttton.alpha = 0
            
            // self.secondView.transform = CGAffineTransformMakeTranslation(0, 500)
            //self.thirdView.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            
            //self.firstView.transform = CGAffineTransformMakeTranslation(0, 0)
            self.secondView.transform = CGAffineTransformMakeTranslation(0, 600)
            // self.thirdView.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            
            // self.firstView.transform = CGAffineTransformMakeTranslation(0, 0)
            // self.secondView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.thirdView.transform = CGAffineTransformMakeTranslation(0, 600)
            }, completion: nil)

        
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(0.75, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.imageICOn.transform = CGAffineTransformMakeTranslation(0, 0)
            self.firstView.transform = CGAffineTransformMakeTranslation(0, 0)
            self.label.transform = CGAffineTransformMakeTranslation(0, 0)

            self.backBuuttton.alpha = 1

           // self.secondView.transform = CGAffineTransformMakeTranslation(0, 500)
            //self.thirdView.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            
            //self.firstView.transform = CGAffineTransformMakeTranslation(0, 0)
            self.secondView.transform = CGAffineTransformMakeTranslation(0, 0)
           // self.thirdView.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)

        UIView.animateWithDuration(0.75, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            
           // self.firstView.transform = CGAffineTransformMakeTranslation(0, 0)
           // self.secondView.transform = CGAffineTransformMakeTranslation(0, 500)
            self.thirdView.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)

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
    
    
}
