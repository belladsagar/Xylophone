//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation //Used work with audio and camera

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!  //A audio player used to play an audio data from a file memory

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton)   //sender is contains details of the button pressed
    {
        //print(sender.backgroundColor)
        playSound(buttonAddress : sender.currentTitle!)
    }
    
    func playSound(buttonAddress : String) {
        let url = Bundle.main.url(forResource: buttonAddress, withExtension: "wav")
        //Bundle-A directory where certain resource is stored
        //main-It is a constructor
        //url-It is an object which helps us to access a file
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


