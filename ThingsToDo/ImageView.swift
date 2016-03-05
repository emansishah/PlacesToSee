//
//  ImageView.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/4/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit


class ImageView: UIViewController {
    
    var imagenumber = Int()
    var images = ["campanile", "asianghetto", "memorialglade", "tildenpark", "berkeleymarina", "sathergate", "lawrencehallofscience"]
    
    

    @IBOutlet weak var Picture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Picture.image = UIImage (named: images[imagenumber])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
