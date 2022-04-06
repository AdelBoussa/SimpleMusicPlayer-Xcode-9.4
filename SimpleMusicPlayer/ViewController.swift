//
//  ViewController.swift
//  SimpleMusicPlayer
//
//  Created by Apple on 2022-03-08.
//  Copyright © 2022 adel. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func soundFiles() {
        let bundle = Bundle.main
        guard let sound = bundle.path(forResource: "DownMaster1", ofType: "mp3") else { return }
        do {
            print("sound found\n")
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
        } catch {
            print("sound not found\n")
        }
    }
    @IBAction func p(_ sender: Any) {
        soundFiles()
        audioPlayer.play()

    }
    @IBAction func paus(_ sender: Any) {
        audioPlayer.pause()
    }
    //  @IBAction func pb(_ sender: UIButton) {
    //    soundFiles()
      //  audioPlayer.play()
   // }
    
    
}
