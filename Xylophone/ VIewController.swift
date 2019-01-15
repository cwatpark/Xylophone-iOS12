//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{
    
    var Audioplayer: AVAudioPlayer!
    let note = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(SoundFileName: note[sender.tag-1])
    }
    
    func playSound(SoundFileName: String){
        let soundURL = Bundle.main.url(forResource: SoundFileName, withExtension: "wav")
        
        do{
            Audioplayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
            print(error)
        }
        Audioplayer.play()
    }
  

}

