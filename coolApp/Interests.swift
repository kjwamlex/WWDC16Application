//
//  Interests.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 26..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class Interests : UIViewController {
    
    @IBOutlet weak var Icon: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var ViewiCons: UIView!
    
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!
    
    @IBOutlet weak var iconMath: UIButton!
    @IBOutlet weak var iConProgramming: UIButton!
    @IBOutlet weak var iConApple: UIButton!
    
    @IBOutlet weak var iConProgrammingLabel: UILabel!
    @IBOutlet weak var iConAppleLabel: UILabel!

    
    @IBOutlet weak var backBuuttton: UIButton!
    
    
    var timer = NSTimer()
    var counter = 0
    
    var Mathtimer = NSTimer()
    var Mathcounter = 0

    var Appletimer = NSTimer()
    var Applecounter = 0

    var programmingtimer = NSTimer()
    var programmingcounter = 0

    
    
    override func viewWillAppear(animated: Bool) {
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)
        
        self.Icon.layer.cornerRadius = 50.0
        self.Icon.clipsToBounds = true
        self.iconMath.layer.cornerRadius = 38.0
        self.iconMath.clipsToBounds = true

        self.iConProgramming.layer.cornerRadius = 38.0
        self.iConProgramming.clipsToBounds = true

        self.iConApple.layer.cornerRadius = 38.0
        self.iConApple.clipsToBounds = true
        
        self.iConProgramming.transform = CGAffineTransformMakeTranslation(0, 700)
        self.iConApple.transform = CGAffineTransformMakeTranslation(0, 700)

        self.iConProgrammingLabel.transform = CGAffineTransformMakeTranslation(0, 700)
        self.iConAppleLabel.transform = CGAffineTransformMakeTranslation(0, 700)

        
        addParallaxToView(ViewiCons)
        
        addParallaxToView(Icon)
        addParallaxToView(Label)
        
        // self.textView.alpha = 0
        ViewiCons.transform = CGAffineTransformMakeTranslation(0, 500)
        iPhoneScreenSizes()
    }
    
    @IBAction func goMath() {
        Mathtimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(Interests.MathFinished), userInfo: nil, repeats: true)
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -700)
            
            
            self.Label.transform = CGAffineTransformMakeTranslation(0, -700)
            //self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
            
        }), completion: nil)
        
        
        UIView.animateWithDuration(0.75, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConAppleLabel.transform = CGAffineTransformMakeTranslation(0, 700)
            self.iConApple.transform = CGAffineTransformMakeTranslation(0, 700)
            
            
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConProgramming.transform = CGAffineTransformMakeTranslation(0, 700)
            self.iConProgrammingLabel.transform = CGAffineTransformMakeTranslation(0, 700)
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 700)
        }), completion: nil)
    
    }
    
    @IBAction func goProgramming() {
        programmingtimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(Interests.programmingfinished), userInfo: nil, repeats: true)
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -700)
            
            
            self.Label.transform = CGAffineTransformMakeTranslation(0, -700)
            //self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
            
        }), completion: nil)
        
        
        UIView.animateWithDuration(0.75, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConAppleLabel.transform = CGAffineTransformMakeTranslation(0, 700)
            self.iConApple.transform = CGAffineTransformMakeTranslation(0, 700)
            
            
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConProgramming.transform = CGAffineTransformMakeTranslation(0, 700)
            self.iConProgrammingLabel.transform = CGAffineTransformMakeTranslation(0, 700)
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 700)
        }), completion: nil)
        
    }

    func addParallaxToView(vw: UIView) {
        let amount = 13
        
        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .TiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -amount
        horizontal.maximumRelativeValue = amount
        
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .TiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -amount
        vertical.maximumRelativeValue = amount
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        vw.addMotionEffect(group)
    }

    
    @IBAction func goApple() {
        Appletimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(Interests.AppleFinished), userInfo: nil, repeats: true)
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -700)
            
            
            self.Label.transform = CGAffineTransformMakeTranslation(0, -700)
            //self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
            
        }), completion: nil)
        
        
        UIView.animateWithDuration(0.75, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConAppleLabel.transform = CGAffineTransformMakeTranslation(0, 700)
            self.iConApple.transform = CGAffineTransformMakeTranslation(0, 700)
            
            
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConProgramming.transform = CGAffineTransformMakeTranslation(0, 700)
            self.iConProgrammingLabel.transform = CGAffineTransformMakeTranslation(0, 700)
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 700)
        }), completion: nil)
        
    }

    
    
    

    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(EducationVC.finished), userInfo: nil, repeats: true)
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -700)
            
            
            self.Label.transform = CGAffineTransformMakeTranslation(0, -700)
            //self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
            
        }), completion: nil)
        
        
        UIView.animateWithDuration(0.75, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConAppleLabel.transform = CGAffineTransformMakeTranslation(0, 700)
            self.iConApple.transform = CGAffineTransformMakeTranslation(0, 700)

            
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConProgramming.transform = CGAffineTransformMakeTranslation(0, 700)
            self.iConProgrammingLabel.transform = CGAffineTransformMakeTranslation(0, 700)
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 700)
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
            
        default:
            print("not an iPhone")
            
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -128)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -128)
            self.ViewiCons.transform = CGAffineTransformMakeTranslation(0, 0)
            
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConProgramming.transform = CGAffineTransformMakeTranslation(0, 0)
            self.iConProgrammingLabel.transform = CGAffineTransformMakeTranslation(0, 0)

        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iConAppleLabel.transform = CGAffineTransformMakeTranslation(0, 0)
            self.iConApple.transform = CGAffineTransformMakeTranslation(0, 0)
        }), completion: nil)

        
    }
    
    func finished() {
        
        counter += 1
        
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("NewVC") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
        }
    }
    
    
    func AppleFinished() {
        
        Applecounter += 1
        
        if Applecounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("InterestApple") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
        }
        if Applecounter == 2 {
            counter = 0
            timer.invalidate()
        }
    }
    func MathFinished() {
        
        Mathcounter += 1
        
        if Mathcounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("MathInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if Mathcounter == 2 {
            counter = 0
            timer.invalidate()
        }
    }
    
    func programmingfinished() {
        
        programmingcounter  += 1
        
        if programmingcounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("InterestSwift") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
        }
        if programmingcounter == 2 {
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