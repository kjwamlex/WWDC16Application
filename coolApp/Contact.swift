//
//  Contact.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 22..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

import MessageUI

class Contact: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var Icon: UIImageView!
    
    @IBOutlet weak var EducationLabel: UILabel!
    
    @IBOutlet weak var constraintwidthicon: NSLayoutConstraint!
    
    @IBOutlet weak var constraintheighticon: NSLayoutConstraint!
    @IBOutlet weak var textView: UIView!
    
    @IBOutlet weak var backBuuttton: UIButton!
    
   // @IBOutlet var textView: UITextView!
    
    @IBOutlet weak var constraint: NSLayoutConstraint!
    
    var timer = NSTimer()
    var counter = 0
    
    
    override func viewWillAppear(animated: Bool) {
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.Default, animated: true)

        self.Icon.layer.cornerRadius = 50.0
        self.Icon.clipsToBounds = true
        textView.transform = CGAffineTransformMakeTranslation(0, 500)
        iPhoneScreenSizes()
       // self.textView.alpha = 0
    }
    
    @IBAction func goBack() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.75, target:self, selector: #selector(Contact.finished), userInfo: nil, repeats: true)
        UIView.animateWithDuration(0.5, animations: {
            
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -700)
            self.EducationLabel.transform = CGAffineTransformMakeTranslation(0, -700)
            self.textView.transform = CGAffineTransformMakeTranslation(0, 700)
            self.backBuuttton.alpha = 0
          //  self.textView.alpha = 0
        })

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
            //self.textView.contentOffset = CGPointMake(0, 0)
            self.Icon.transform = CGAffineTransformMakeTranslation(0, -128)
            self.EducationLabel.transform = CGAffineTransformMakeTranslation(0, -128)
                        self.textView.transform = CGAffineTransformMakeTranslation(0, 0)
        }), completion: nil)
        
        UIView.animateWithDuration(0.75, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            
            //self.textView.alpha = 1
            // self.constraint.constant = -100
        }), completion: nil)
        
    }
    
    @IBAction func sendAcceptedEmail() {
        if (MFMailComposeViewController.canSendMail()) {
            
            let emailTitle = "Congratulations Joonwoo!"
            
            let messageBody = "You have been accepted for a WWDC Scholarship!"
            var mc: MFMailComposeViewController = MFMailComposeViewController()
            
            mc.mailComposeDelegate = self
            
            mc.setSubject(emailTitle)
            
            mc.setToRecipients(["ironmanjw@hotmail.co.kr"])
            
            mc.setMessageBody(messageBody, isHTML: false)
            
            self.presentViewController(mc, animated: true, completion: nil)
            
        }else {
            
            self.dismissViewControllerAnimated(true, completion: nil)
        }

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

    
    func mailComposeController(controller:MFMailComposeViewController, didFinishWithResult result:MFMailComposeResult, error:NSError?) {
        
        
        switch result.rawValue {
        case MFMailComposeResultCancelled.rawValue:
            print("Mail cancelled")
        case MFMailComposeResultSaved.rawValue:
            print("Mail saved")
        case MFMailComposeResultSent.rawValue:
            print("Mail sent")
        case MFMailComposeResultFailed.rawValue:
            print("Mail sent failure: \(error!.localizedDescription)")
        default:
            break
        }
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    
}
