//
//  ViewController.swift
//  SlideshowApp
//
//  Created by bc0067042 on 2016/06/03.
//  Copyright © 2016年 maru.ishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //変数定義
    var timer : NSTimer!
    var image: [UIImage] = []
    var imageView: [UIImageView?] = []
    var currentPage = 0
    var maxPage = 5
    var playing = false
    
    //IB接続
    @IBOutlet weak var uiImageView: UIImageView!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBAction func unwind(segue: UIStoryboardSegue){
    }
    
    @IBAction func prev(sender: AnyObject) {
        if currentPage != 0 {currentPage = currentPage - 1
        } else {currentPage = maxPage}
        
        uiImageView.image = image[currentPage]
    }
    
    @IBAction func next(sender: AnyObject) {
        if currentPage != maxPage {currentPage = currentPage + 1
        } else {currentPage = 0}
        
        uiImageView.image = image[currentPage]
    }
    
    @IBAction func play(sender: AnyObject) {
        if playing {
            playButton.setTitle("再生", forState: UIControlState.Normal)
            playing = false
        } else {
            playButton.setTitle("停止", forState: UIControlState.Normal)
        playing = true}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //画像の配列格納
        image = [UIImage(named:"1.jpg")!,
        UIImage(named:"2.gif")!,
        UIImage(named:"3.jpg")!,
        UIImage(named:"4.jpeg")!,
        UIImage(named:"5.jpg")!,
        UIImage(named:"6.png")!]
        
        //imageViewにimageを追加
        uiImageView.image = image[currentPage]
        
        
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

