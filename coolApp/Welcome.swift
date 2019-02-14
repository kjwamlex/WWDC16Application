//
//  Welcome.swift
//  coolApp
//
//  Created by 김준우 on 2016. 3. 20..
//  Copyright © 2016년 김준우. All rights reserved.
//

import UIKit

class Welcome : UIViewController {
    
    @IBAction func tapped() {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("NewVC") as UIViewController
        self.presentViewController(vc, animated: false, completion: nil)
        self.removeFromParentViewController()

    }
    
    override func viewWillDisappear(animated: Bool) {
        self.removeFromParentViewController()
    }
}
