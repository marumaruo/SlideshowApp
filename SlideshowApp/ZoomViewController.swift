//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by bc0067042 on 2016/06/05.
//  Copyright © 2016年 maru.ishi. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController {

    var image: UIImage!

    @IBOutlet weak var uiImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        uiImageView.image = image
        uiImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2)
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
