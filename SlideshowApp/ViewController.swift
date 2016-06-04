//
//  ViewController.swift
//  SlideshowApp
//
//  Created by bc0067042 on 2016/06/03.
//  Copyright © 2016年 maru.ishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var uiImageView: UIImageView!
    
    @IBAction func unwind(segue: UIStoryboardSegue){
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        uiImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "imageTapped"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let zoomViewController:ZoomViewController = segue.destinationViewController as! ZoomViewController
    }
    
    func imageTapped(sender: UITapGestureRecognizer){
        print(sender)
    }

}

