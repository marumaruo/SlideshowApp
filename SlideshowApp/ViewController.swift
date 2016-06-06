//
//  ViewController.swift
//  SlideshowApp
//
//  Created by bc0067042 on 2016/06/03.
//  Copyright © 2016年 maru.ishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    
    var index: Int = 0
    
    var imageViewNameArray: [String] = [
        "test1.jpg",
        "test2.jpg",
        "test3.jpg"
    ]
    
    var timer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named: imageViewNameArray[index])
        
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTapped)))

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imageTapped(sender: UITapGestureRecognizer){
        print(sender)
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let zoomViewController = storyboard.instantiateViewControllerWithIdentifier(Utility.className(ZoomViewController)) as! ZoomViewController
        zoomViewController.image = self.imageView.image
        self.presentViewController(zoomViewController, animated: true, completion: nil)
    }
    
    @IBAction func playSlideShow(sender: AnyObject) {

        if let timer = timer where timer.valid == true {
            timer.invalidate()
            playButton.setTitle("再生", forState: UIControlState.Normal)
            
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(self.inclimentSlideShow), userInfo: nil, repeats: true)
            
            playButton.setTitle("停止", forState: UIControlState.Normal)
        }
    }

    func inclimentSlideShow() {
        index += 1
        index = index % imageViewNameArray.count
        imageView.image = UIImage(named: imageViewNameArray[index])
    }
    
    func declimentSlideShow() {
        index -= 1
        if index < 0 {
            index = imageViewNameArray.count + index
        }
        index = index % imageViewNameArray.count
        imageView.image = UIImage(named: imageViewNameArray[index])
    }

    @IBAction func nextSlideShow(sender: AnyObject) {
        self.inclimentSlideShow()
    }

    @IBAction func backSlideShow(sender: AnyObject) {
        self.declimentSlideShow()
    }
}

