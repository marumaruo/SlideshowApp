//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by bc0067042 on 2016/06/05.
//  Copyright © 2016年 maru.ishi. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = image
        
//        NSTimer.scheduledTimerWithTimeInterval(2.0, target: , selector: <#T##Selector#>, userInfo: <#T##AnyObject?#>, repeats: <#T##Bool#>)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapBackButton(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    

}
