//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 300, "Medium": 400, "Hard": 700]
    var count = 0
    var totalCount = 0
    var timer = Timer()
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        count = eggTimes[hardness]!
        totalCount = eggTimes[hardness]!
        displayLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        
        if (count > 0) {
            progressBar.progress = 1 - (Float(count) / Float(totalCount))
            count -= 1
        }
        else {
            timer.invalidate()
            progressBar.progress = 1.0
            displayLabel.text = "Done."
            
            guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }
            player = try! AVAudioPlayer(contentsOf: url)
            player.play()
        }
    }
}
