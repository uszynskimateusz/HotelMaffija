//
//  ViewController.swift
//  HotelMaffija
//
//  Created by Mateusz Uszyński on 27/08/2020.
//  Copyright © 2020 Mateusz Uszyński. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func songPressed(_ sender: UIButton) {
        
        playSound(resource: sender.currentTitle!)
    }
    

    func playSound(resource: String) {
        let url = Bundle.main.url(forResource: resource, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

