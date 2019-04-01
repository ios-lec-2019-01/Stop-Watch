//
//  ViewController.swift
//  Stop Watch
//
//  Created by 김종현 on 01/04/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var counter = 0
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLabel.text = String(counter)
    }

    @IBAction func timeStart(_ sender: Any) {
        
        if !myTimer.isValid {
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        } else {
            print("Play button은 작동하지 않음")
        }
        
    }
    
    @IBAction func timeStop(_ sender: Any) {
        myTimer.invalidate()
        
    }
    
    @IBAction func timePause(_ sender: Any) {
        myTimer.invalidate()
        counter = 0
        timeLabel.text = String(counter)
        
    }
    
    @objc func updateTime() {
        counter+=1
        timeLabel.text = String(counter)
    }
    
    
}

