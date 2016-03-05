//
//  ViewController.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/2/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit
import ImageSlideshow

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
var PlacesToGo = ["The Campanile", "Asian Ghetto", "Memorial Glade", "Tilden Park", "Berkeley Marina", "Sproul Plaza", "Lawrence Hall of Science"]
    

var indexToPass = Int()
 
    @IBOutlet weak var ActivityView: UITableView!
    @IBOutlet var slideshow: ImageSlideshow!

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ActivityView.delegate = self
        ActivityView.dataSource = self
       
      slideshow.setImageInputs([ImageSource(image: UIImage(named: "ucberkeley")!), ImageSource(image: UIImage(named: "sathersproul")!),])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return PlacesToGo.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = ActivityView.dequeueReusableCellWithIdentifier("activityCell", forIndexPath: indexPath) as! ActivityTableViewCell
        cell.PlaceName.text = PlacesToGo[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        indexToPass = indexPath.row
        self.performSegueWithIdentifier("toImage", sender: indexPath)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "toImage") {
            let vc = segue.destinationViewController as! ImageView
            vc.imagenumber = indexToPass
            
        
    }

}

}

