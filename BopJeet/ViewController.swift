//
//  ViewController.swift
//  BopJeet
//
//  Created by Baljeet Singh on 3/16/17.
//  Copyright © 2017 Baljeet Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var command: UILabel!
    @IBOutlet var remark: UILabel!
    @IBOutlet var toy: UIImage!
    @IBOutlet var scoreLabel : UILabel!
    let gestureList = ["Tap", "Swipe Right", "Pinch"]
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        toy = UIImage(named: "BopJeetToy.png")
        command.text = nextGesture()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleTap(sender: UITapGestureRecognizer){
        if sender.state == .Ended{
            remark.text = "You hit me !!"
            print("You hit me !!")
            command.text = nextGesture()
            score += 1
            scoreLabel.text = "\(score)"
        }
        
    }
    
    @IBAction func handleSwipe(swipe: UISwipeGestureRecognizer){
        if swipe.state == .Ended {
            print("You dragged me right...")
            remark.text = "You dragged me right..."
            command.text = nextGesture()
            score += 1
            scoreLabel.text = "\(score)"
        }
        
    }
    
    @IBAction func handlePinch(pinch: UIPinchGestureRecognizer){
        if pinch.state == .Ended {
            print("Ouch !!! You pinched me...")
            remark.text = "Ouch !!! You pinched me..."
            command.text = nextGesture()
            score += 1
            scoreLabel.text = "\(score)"
        }
        
    }
    
    func nextGesture(sender: Void) -> String {
        return gestureList[Int(arc4random_uniform(3))]
    }


}

