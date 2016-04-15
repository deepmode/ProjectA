//
//  ViewController.swift
//  ProjectA
//
//  Created by Eric Ho on 13/3/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

import UIKit
import EHSharecode

class ViewController: UIViewController {


    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPress(sender: AnyObject) {
        
    
        let product = Product(name: "Mac Book Pro 2015", price: 13000.0)
        self.textLabel.text = product.description
        
        let newImage = UIImage.imageWithColor(UIColor.randomColor)
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            self.imageView.image = newImage
        }
        
    }

}

