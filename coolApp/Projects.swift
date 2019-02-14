//
//  Projects.swift
//  coolApp
//
//  Created by Joonwoo Kim on 2016. 4. 19..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit
class ProjectsMain: UIViewController {
    
    @IBOutlet weak var prjView: UIView!
    
    @IBOutlet weak var Icon: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var prj1: UIButton!
    @IBOutlet weak var prj1Label: UILabel!
    
    @IBOutlet weak var prj2: UIButton!
    @IBOutlet weak var prj2Label: UILabel!
    @IBOutlet weak var prj3: UIButton!
    @IBOutlet weak var prj3Label: UILabel!
    @IBOutlet weak var backBUtton: UIButton!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    var timer = NSTimer()
    
    var counter = 0
    
    
    var QuickrTimer = NSTimer()
    var QuickrCounter = 0
    var studenttimer = NSTimer()
    var studentcounter = 0
    var ForceNumbertimer = NSTimer()
    var forcenumbercounter = 0

    
    
    override func viewWillAppear(animated: Bool) {
        prjView.transform = CGAffineTransformMakeTranslation(0, 500)
        
        //prj1.transform = CGAffineTransformMakeTranslation(0,500)
        prj2.transform = CGAffineTransformMakeTranslation(0,500)
        prj3.transform = CGAffineTransformMakeTranslation(0,500)
       // prj1Label.transform = CGAffineTransformMakeTranslation(0,500)
        prj2Label.transform = CGAffineTransformMakeTranslation(0,500)
        prj3Label.transform = CGAffineTransformMakeTranslation(0,500)
        self.prj1.layer.cornerRadius = 38
        self.prj1.clipsToBounds = true
        self.prj2.layer.cornerRadius = 38
        self.prj2.clipsToBounds = true
        self.prj3.layer.cornerRadius = 38
        self.prj3.clipsToBounds = true
        self.Icon.layer.cornerRadius = 50
        self.Icon.clipsToBounds = true

        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)

        
    }
    
    @IBAction func goBack() {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(ProjectsMain.finished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            //self.prj1.transform = CGAffineTransformMakeTranslation(0, 0)
            //self.prj1Label.transform = CGAffineTransformMakeTranslation(0, 0)
            self.prjView.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj2.transform = CGAffineTransformMakeTranslation(0, 500)
            self.prj2Label.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj3.transform = CGAffineTransformMakeTranslation(0, 500)
            self.prj3Label.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, animations: {
            
            self.backBUtton.alpha = 0
        })
        
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -500)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -500)
            //self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            
        }), completion: nil)
        
    }
    
    
    @IBAction func gotoQuickrProject() {
    
        QuickrTimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(ProjectsMain.QUickrFinished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            //self.prj1.transform = CGAffineTransformMakeTranslation(0, 0)
            //self.prj1Label.transform = CGAffineTransformMakeTranslation(0, 0)
            self.prjView.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj2.transform = CGAffineTransformMakeTranslation(0, 500)
            self.prj2Label.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj3.transform = CGAffineTransformMakeTranslation(0, 500)
            self.prj3Label.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, animations: {
            
            self.backBUtton.alpha = 0
        })
        
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -500)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -500)
            //self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            
        }), completion: nil)

        
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
    
    func QUickrFinished() {
        
        QuickrCounter += 1
        
        if QuickrCounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("QuickrInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()
            
        }
        if QuickrCounter == 2 {
            QuickrCounter = 0
            QuickrTimer.invalidate()
        }
    }
    

    //ForceNumberInitial
    
    //StudentWebInitial
    
    @IBAction func gotoforcenumberProject() {
        
        ForceNumbertimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(ProjectsMain.ForceNumberfinished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            //self.prj1.transform = CGAffineTransformMakeTranslation(0, 0)
            //self.prj1Label.transform = CGAffineTransformMakeTranslation(0, 0)
            self.prjView.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj2.transform = CGAffineTransformMakeTranslation(0, 500)
            self.prj2Label.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj3.transform = CGAffineTransformMakeTranslation(0, 500)
            self.prj3Label.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, animations: {
            
            self.backBUtton.alpha = 0
        })
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -500)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -500)
            //self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            
        }), completion: nil)
    }
    
    
    
    
    func ForceNumberfinished() {
        
        forcenumbercounter += 1
        
        if forcenumbercounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ForceNumberInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()

        }
        if forcenumbercounter == 2 {
            forcenumbercounter = 0
            ForceNumbertimer.invalidate()
        }
    }
    
    
    
    
    @IBAction func gotoStudentWebProject() {
        
        studenttimer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(ProjectsMain.StudentWebFinished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            //self.prj1.transform = CGAffineTransformMakeTranslation(0, 0)
            //self.prj1Label.transform = CGAffineTransformMakeTranslation(0, 0)
            self.prjView.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj2.transform = CGAffineTransformMakeTranslation(0, 500)
            self.prj2Label.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj3.transform = CGAffineTransformMakeTranslation(0, 500)
            self.prj3Label.transform = CGAffineTransformMakeTranslation(0, 500)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, animations: {
            
            self.backBUtton.alpha = 0
        })
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -500)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -500)
            //self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            
        }), completion: nil)
    }
    
    
    
    
    func StudentWebFinished() {
        
        studentcounter += 1
        
        if studentcounter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("StudentWebInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            self.removeFromParentViewController()

        }
        if studentcounter == 2 {
            studentcounter = 0
            studenttimer.invalidate()
        }
    }


    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            //self.prj1.transform = CGAffineTransformMakeTranslation(0, 0)
            //self.prj1Label.transform = CGAffineTransformMakeTranslation(0, 0)
            self.prjView.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj2.transform = CGAffineTransformMakeTranslation(0, 0)
            self.prj2Label.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.prj3.transform = CGAffineTransformMakeTranslation(0, 0)
            self.prj3Label.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
        
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -128)
            self.Label.transform = CGAffineTransformMakeTranslation(0, -128)
            //self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
            
        }), completion: nil)

    }
    
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
