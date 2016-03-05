//
//  IntroScreen.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/4/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit

class IntroScreen: UIViewController {

    @IBOutlet var Welcome: UILabel!
    @IBOutlet var GetStarted: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        GetStarted.layer.cornerRadius = 6.0
        GetStarted.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        Welcome.center.x  -= view.bounds.width
        GetStarted.center.x -= view.bounds.width
        UIView.animateWithDuration(0.5, animations: {
            self.Welcome.center.x += self.view.bounds.width
            self.GetStarted.center.x += self.view.bounds.width
        })
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
