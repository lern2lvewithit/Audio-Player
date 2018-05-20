//
//  ViewController.swift
//  Audio Player
//
//  Created by Steven Lerner on 5/20/18.
//  Copyright © 2018 Steven Lerner. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = Bundle.main.path(forResource: "sheep", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
            
            
        } catch {
            
            // Process any errors
            
            
        }
        
    }
    
    @IBAction func playTapped(_ sender: Any) {
        
        player.play()
        
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
        
        player.pause()
        
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        player.volume = slider.value
        
    }
    
}

