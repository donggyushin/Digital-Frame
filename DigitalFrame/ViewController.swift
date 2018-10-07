//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 좌 준협 on 2018. 10. 6..
//  Copyright © 2018년 좌 준협. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewer:UIImageView!
    @IBOutlet weak var toggleButton:UIButton!
    @IBOutlet weak var speedLabel:UILabel!
    @IBOutlet weak var speedSlider:UISlider!
    
    var imageArrays = [
        UIImage.init(named: "1.jpeg")!,
        UIImage.init(named: "2.jpeg")!,
        UIImage.init(named: "3.jpeg")!,
        UIImage.init(named: "4.jpeg")!,
        UIImage.init(named: "5.jpeg")!,
        UIImage.init(named: "6.jpeg")!,
        UIImage.init(named: "7.jpeg")!,
        UIImage.init(named: "8.jpeg")!,
        UIImage.init(named: "9.jpg")!,
        UIImage.init(named: "10.jpg")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageViewer.animationImages = imageArrays
        imageViewer.animationDuration = 20
    }
    
    @IBAction func clickButton(_ sender:Any){
        if imageViewer.isAnimating {
            imageViewer.stopAnimating()
            toggleButton.setTitle("start", for: UIControlState.normal)
        }else {
            imageViewer.startAnimating()
            toggleButton.setTitle("stop", for: UIControlState.normal)
        }
    }
    
    @IBAction func movingSlider(_ sender:Any){
        var durationTime: Double = Double(speedSlider.value)
        imageViewer.animationDuration = durationTime
        if toggleButton.title(for: UIControlState.normal)! == "stop" {
            imageViewer.startAnimating()
        }
        var durationTimeforLabel : String = String(durationTime)
        var shorter = durationTimeforLabel.prefix(5)
        speedLabel.text = String(shorter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

