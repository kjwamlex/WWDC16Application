//
//  New.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 19..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class new: UIViewController {
    
    @IBOutlet weak var myFace: UIView!
    
    @IBOutlet weak var iCons1: UIView!
    @IBOutlet weak var iCons: UIView!
    @IBOutlet weak var iCon: UIView!
    @IBOutlet weak var iConportrait: UIView!
    @IBOutlet weak var iConportrait2: UIView!
    @IBOutlet weak var iCOnlastview1: UIView!
    @IBOutlet weak var iCOnlastview2: UIView!
    @IBOutlet weak var iCOnlastview3: UIView!
    @IBOutlet weak var iCOnlastview4: UIView!
    
    @IBOutlet weak var centerbutton: UIButton!
    @IBOutlet weak var Flag: UIButton!
    @IBOutlet weak var CanadaFlag: UIButton!
    
    @IBOutlet var threeDTouchbutton: UIButton!
    
    @IBOutlet var threedtouchView: UIVisualEffectView!
    
    @IBOutlet var visual: UIVisualEffectView!
    
    @IBOutlet var label: UILabel!
    var currentForce: CGFloat! = 0
    var tareForce: CGFloat! = 0
    
    //@IBOutlet var constraint: NSLayoutConstraint!

    @IBOutlet weak var wholeIconViewPortrait: UIView!
    @IBOutlet weak var lastView: UIView!
    @IBOutlet weak var image: UIImageView!


    var timer = NSTimer()
    var timerEducation = NSTimer()
    var counter = 0
    var counterEducation = 0
    var timerCanada = NSTimer()
    var counterCanada = 0
    var timerContact = NSTimer()
    var counterContact = 0
    var timerKorea = NSTimer()
    var counterKorea = 0
    var timerDevices = NSTimer()
    var counterDevices = 0
    var interestsTimer = NSTimer()
    var interestsCounter = 0
    var ProjectTimer = NSTimer()
    var ProjectCounter = 0
    var SkillsTimer = NSTimer()
    var SkillsCounter = 0

    override func viewWillAppear(animated: Bool) {
        
        //constraint.constant = 10
        
        myFace.transform = CGAffineTransformMakeScale(10, 10)
        iCons1.transform = CGAffineTransformMakeScale(10, 10)
        wholeIconViewPortrait.transform = CGAffineTransformMakeScale(10, 10)
        lastView.transform = CGAffineTransformMakeScale(10, 10)
        
        addParallaxToView(wholeIconViewPortrait)
        addParallaxToView(iCons1)

        addParallaxToView(myFace)

        addParallaxToView(lastView)
        ParallaxViewforBackground(image)

        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
self.visual.alpha = 0
        self.centerbutton.alpha = 0
        //myFace.alpha = 0
        self.iCons.layer.cornerRadius = 38
        self.iCons.clipsToBounds = true
        self.iCon.layer.cornerRadius = 38
        self.iCon.clipsToBounds = true
        self.iConportrait.layer.cornerRadius = 38
        self.iConportrait.clipsToBounds = true
        self.iConportrait2.layer.cornerRadius = 38
        self.iConportrait2.clipsToBounds = true
        self.iCOnlastview1.layer.cornerRadius = 38
        self.iCOnlastview1.clipsToBounds = true
        self.iCOnlastview2.layer.cornerRadius = 38
        self.iCOnlastview2.clipsToBounds = true
        self.iCOnlastview3.layer.cornerRadius = 38
        self.iCOnlastview3.clipsToBounds = true
        self.iCOnlastview4.layer.cornerRadius = 38
        self.iCOnlastview4.clipsToBounds = true
        
        self.centerbutton.layer.cornerRadius = 45
        self.centerbutton.clipsToBounds = true
        self.Flag.layer.cornerRadius = 38
        self.Flag.clipsToBounds = true
        self.CanadaFlag.layer.cornerRadius = 38
        self.CanadaFlag.clipsToBounds = true

        self.myFace.layer.cornerRadius = 50.0
        self.myFace.clipsToBounds = true
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
    
    func ParallaxViewforBackground(vw: UIView) {
        let amount = 13
        
        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .TiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = amount
        horizontal.maximumRelativeValue = -amount
        
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .TiltAlongVerticalAxis)
        vertical.minimumRelativeValue = amount
        vertical.maximumRelativeValue = -amount
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        vw.addMotionEffect(group)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            //self.myFace.transform = CGAffineTransformMakeScale(1, 1)
            
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.myFace.transform = CGAffineTransformMakeScale(1, 1)

            }, completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.2, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.iCons1.transform = CGAffineTransformMakeScale(1, 1)
            self.wholeIconViewPortrait.transform = CGAffineTransformMakeScale(1, 1)

        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.35 , usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.lastView.transform = CGAffineTransformMakeScale(1, 1)
self.centerbutton.alpha = 1
        }), completion: nil)
        UIView.animateWithDuration(0.75, delay: 0.4, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
        }), completion: nil)

    }
    
    
    
    @IBAction func myGeneralInfo() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target:self, selector: #selector(new.finished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.2, animations: {
            self.centerbutton.alpha = 0
        })

        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.view.transform = CGAffineTransformMakeScale(15, 15)
        }), completion: nil)
    }
    
    @IBAction func Education() {
        timerEducation = NSTimer.scheduledTimerWithTimeInterval(0.3, target:self, selector: #selector(new.educationFinished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.5, animations: {
            self.centerbutton.setImage(UIImage(named: "EDUCATION.png"), forState: UIControlState.Normal)
            //print("run")
        })
    }
    
    
    @IBAction func Skills() {
        SkillsTimer = NSTimer.scheduledTimerWithTimeInterval(0.3, target:self, selector: #selector(new.SkillsFinished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.5, animations: {
            self.centerbutton.setImage(UIImage(named: "SKILLS.png"), forState: UIControlState.Normal)
            //print("run")
        })
    }
    
    @IBAction func Canada() {
        timerCanada = NSTimer.scheduledTimerWithTimeInterval(0.3, target:self, selector: #selector(new.CanadaFinished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.5, animations: {
            self.centerbutton.setImage(UIImage(named: "canada_640.png"), forState: UIControlState.Normal)
            //print("run")
        })
    }
    
    @IBAction func Contact() {
        timerContact = NSTimer.scheduledTimerWithTimeInterval(0.3, target:self, selector: #selector(new.contactFinished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.5, animations: {
            self.centerbutton.setImage(UIImage(named: "CONTACTIMAGE2.png"), forState: UIControlState.Normal)
            //print("run")
        })
    }

    @IBAction func Korea() {
        timerKorea = NSTimer.scheduledTimerWithTimeInterval(0.3, target:self, selector: #selector(new.KoreaFinished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.5, animations: {
            self.centerbutton.setImage(UIImage(named: "Korea flag.jpg"), forState: UIControlState.Normal)
            //print("run")
        })
    }
    
    @IBAction func Devices() {
        timerDevices = NSTimer.scheduledTimerWithTimeInterval(0.3, target:self, selector: #selector(new.DevicesFinished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.5, animations: {
            self.centerbutton.setImage(UIImage(named: "DEVICES.png"), forState: UIControlState.Normal)
            //print("run")
        })
    }

    @IBAction func Projects() {
        ProjectTimer = NSTimer.scheduledTimerWithTimeInterval(0.3, target:self, selector: #selector(new.ProjectsFinished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.5, animations: {
            self.centerbutton.setImage(UIImage(named: "PROJECTS.png"), forState: UIControlState.Normal)
            //self.myFace.backgroundColor = UIColor.blackColor()

            //print("run")
        })
        
        UIView.animateWithDuration(0.3, animations: {
            
            self.myFace.backgroundColor = UIColor.blackColor()

        })
    }

    @IBAction func Interests() {
        interestsTimer = NSTimer.scheduledTimerWithTimeInterval(0.3, target:self, selector: #selector(new.InterestsFinished), userInfo: nil, repeats: true)
        
        UIView.animateWithDuration(0.5, animations: {
            self.centerbutton.setImage(UIImage(named: "INTERESTS.png"), forState: UIControlState.Normal)
            //print("run")
        })
    }


    
    func finished() {
        counter += 1
        //print("\(counter)")
        if counter == 1 {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("MyInfo") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
        }
        if counter == 2 {
            counter = 0
            timer.invalidate()
        }
    }
    
    func educationFinished() {
        
        counterEducation += 1
        //print("\(counterEducation)")
        
        if counterEducation == 1 {
            UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.centerbutton.alpha = 0
            }), completion: nil)
            
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.view.transform = CGAffineTransformMakeScale(15, 15)
            }), completion: nil)
        }
        if counterEducation == 2 {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("EducationInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)

        }
        
        if counterEducation == 3 {
            counterEducation = 0
            timerEducation.invalidate()
        }
    }
    
    
    func SkillsFinished() {
        
        SkillsCounter += 1
        //print("\(counterEducation)")
        
        if SkillsCounter == 1 {
            UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.centerbutton.alpha = 0
            }), completion: nil)
            
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.view.transform = CGAffineTransformMakeScale(15, 15)
            }), completion: nil)
        }
        if SkillsCounter == 2 {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("SkillsVC") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            
        }
        
        if SkillsCounter == 3 {
            SkillsCounter = 0
            SkillsTimer.invalidate()
        }
    }

    func contactFinished() {
        
        counterContact += 1
        //print("\(counterContact)")
        
        if counterContact == 1 {
            UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.centerbutton.alpha = 0
            }), completion: nil)
            
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.view.transform = CGAffineTransformMakeScale(15, 15)
            }), completion: nil)
        }
        if counterContact == 2 {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ContactInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            
        }
        
        if counterContact == 3 {
            counterContact = 0
            timerContact.invalidate()
        }
    }
    
    
    func ProjectsFinished() {
        
        ProjectCounter += 1
        //print("\(counterContact)")
        
        if ProjectCounter == 1 {
            UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.centerbutton.alpha = 0
            }), completion: nil)
            
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.view.transform = CGAffineTransformMakeScale(15, 15)
            }), completion: nil)
        }
        if ProjectCounter == 2 {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ProjectsInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
            
        }
        
        if ProjectCounter == 3 {
            ProjectCounter = 0
            ProjectTimer.invalidate()
        }
    }

//ProjectsFinished
    
    func CanadaFinished() {
        
        counterCanada += 1
        //print("\(counterCanada)")
        
        if counterCanada == 1 {
            
            UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.centerbutton.alpha = 0
            }), completion: nil)
            
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.view.transform = CGAffineTransformMakeScale(15, 15)
            }), completion: nil)
            
        }
        
        
        if counterCanada == 2 {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("CanadaLifeInital") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
        }
        
        if counterCanada == 3 {
            
            counterCanada = 0
            timerCanada.invalidate()
            
        }
        
    }
    
    
    
    func KoreaFinished() {
        
        counterKorea += 1
        //print("\(counterKorea)")
        
        if counterKorea == 1 {
            
            UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.centerbutton.alpha = 0
            }), completion: nil)
            
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.view.transform = CGAffineTransformMakeScale(15, 15)
            }), completion: nil)
            
        }
        
        
        if counterKorea == 2 {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("KoreaLifeInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
        }
        
        if counterKorea == 3 {
            
            counterKorea = 0
            timerKorea.invalidate()
            
        }
        
    }
    
    
    
    
    func DevicesFinished() {
        
        counterDevices += 1
        //print("\(counterDevices)")
        
        if counterDevices == 1 {
            
            UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.centerbutton.alpha = 0
            }), completion: nil)
            
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.view.transform = CGAffineTransformMakeScale(15, 15)
            }), completion: nil)
            
        }
        
        
        if counterDevices == 2 {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("DevicesInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
        }
        
        if counterDevices == 3 {
            
            counterDevices = 0
            timerDevices.invalidate()
            
        }
        
    }

    
    
    
    func InterestsFinished() {
        
        interestsCounter += 1
        //print("\(counterDevices)")
        
        if interestsCounter == 1 {
            
            UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.centerbutton.alpha = 0
            }), completion: nil)
            
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 700, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                self.view.transform = CGAffineTransformMakeScale(15, 15)
            }), completion: nil)
            print("it's me")
            
        }
        
        
        if interestsCounter == 2 {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("InterestsInitial") as UIViewController
            self.presentViewController(vc, animated: false, completion: nil)
        }
        
        if interestsCounter == 3 {
            
            interestsCounter = 0
            interestsTimer.invalidate()
            
        }
        
    }
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
        
        myFace.removeFromSuperview()
        iCons1.removeFromSuperview()
        iCons.removeFromSuperview()
        iCon.removeFromSuperview()
        iConportrait.removeFromSuperview()
        iConportrait2.removeFromSuperview()
        iCOnlastview1.removeFromSuperview()
        iCOnlastview2.removeFromSuperview()
        iCOnlastview3.removeFromSuperview()
        iCOnlastview4.removeFromSuperview()
        centerbutton.removeFromSuperview()
        Flag.removeFromSuperview()
        CanadaFlag.removeFromSuperview()
        wholeIconViewPortrait.removeFromSuperview()
        lastView.removeFromSuperview()
        image.removeFromSuperview()
       
        
        
        /*
 
 var timer = NSTimer()
 var timerEducation = NSTimer()
 var counter = 0
 var counterEducation = 0
 var timerCanada = NSTimer()
 var counterCanada = 0
 var timerContact = NSTimer()
 var counterContact = 0
 var timerKorea = NSTimer()
 var counterKorea = 0
 var timerDevices = NSTimer()
 var counterDevices = 0
 var interestsTimer = NSTimer()
 var interestsCounter = 0
 var ProjectTimer = NSTimer()
 var ProjectCounter = 0
 
 */
        
        
        
        
        
        
        
        
        
        
    }
    

        
        override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
            let touch = touches.first as UITouch?
            
            
            if (touch!.view == threeDTouchbutton){
                
                
                
                currentForce = touch!.force
                
                
            }else{
                
            }
            
            UIView.animateWithDuration(0.2, animations: {
                // self.timerlabel.alpha = 1
            })
            
        }
        
        override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
            let touch = touches.first as UITouch?
            
            if (touch!.view == threeDTouchbutton){
                
                UIView.animateWithDuration(1.0, animations: {
                    
                    //self.circle.transform = CGAffineTransformMakeScale(0.4, 0.4)
                    
                    //self.tareForce / 3
                })
                
                
                if label.text == "0" {
                    
                    UIView.animateWithDuration(0.3, animations: {
                        self.threedtouchView.transform = CGAffineTransformMakeScale(1, 1)
                        self.visual.alpha = 0
                        
                    })
                }
                if label.text == "1" {
                    
                    UIView.animateWithDuration(0.3, animations: {
                        self.threedtouchView.transform = CGAffineTransformMakeScale(1.1, 1.1)
                        self.visual.alpha = 0.2
                        
                    })
                }
                if label.text == "2" {
                    
                    UIView.animateWithDuration(0.3, animations: {
                        self.threedtouchView.transform = CGAffineTransformMakeScale(1.2, 1.2)
                        self.visual.alpha = 0.4
                        
                    })
                }
                if label.text == "3" {
                    
                    UIView.animateWithDuration(0.3, animations: {
                        self.threedtouchView.transform = CGAffineTransformMakeScale(1.3, 1.3)
                        self.visual.alpha = 0.6
                        
                    })
                }
                if label.text == "4" {
                    
                    UIView.animateWithDuration(0.3, animations: {
                        self.threedtouchView.transform = CGAffineTransformMakeScale(1.4, 1.4)
                        self.visual.alpha = 0.8
                        
                        
                    })
                }
                if label.text == "5" {
                    
                    UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
                        // self.view = self.viewblur
                        
                        //self.view.bringSubviewToFront(self.viewblur)
                        self.visual.alpha = 1
                        //self.viewsamD.frame = CGRectMake(112, self.SH - 300, 250, 210)
                        
                        //AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                        
                        self.view.bringSubviewToFront(self.threedtouchView)
                    }), completion: nil)
                    
                }
                
                
                
                currentForce = touch!.force
                
                // Numberthatwillchange.text = "\(currentForce.grams(tareForce))"
                
            }else{
                
            }
        }


    

}



extension CGFloat {
    func grams(tare: CGFloat) -> String {
        return String(format: "%.0f", (self - tare) / CGFloat(0.65))
    }
}
