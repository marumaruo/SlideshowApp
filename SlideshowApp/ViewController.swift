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
    
    var timer : NSTimer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        uiImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "imageTapped"))
        uiImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTapped)))
        
        timer = NSTimer.scheduledTimerWithTimeInterval(10.0, target: self, selector: #selector(self.onTimer), userInfo: nil, repeats: true)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let zoomViewController:ZoomViewController = segue.destinationViewController as! ZoomViewController
//    }
    
    func imageTapped(recognizer: UITapGestureRecognizer){
//        if let imageView = recognizer.view as? UIImageView {
//            let image = imageView.image
//    }
    
//            let zoomViewController: UIViewController = ZoomViewController()
//            self.presentViewController(zoomViewController, animated: true, completion: nil)

        let storyboard: UIStoryboard = self.storyboard!
        let zoomViewController = storyboard.instantiateViewControllerWithIdentifier("zoom") as! ZoomViewController
        self.presentViewController(zoomViewController, animated: true, completion: nil)
        
    }
    
    func onTimer(){
        //ここが実行されます
        print("時間です")
    }
}

