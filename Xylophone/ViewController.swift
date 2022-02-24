//
//  ViewController.swift
//  Xylophone
//
//  Created by Kevin Koshy on 02/24/2022.
//  Copyright © 2022 Kevin Koshy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
      //  print(sender.currentTitle)
     playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        sender.alpha = 1
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}

