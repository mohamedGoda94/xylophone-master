//
//  ViewController.swift
//  Xylophone
//
//  Created by Mohamed Goda on 12/01/2018.
//  Copyright © 2018 Mohamed Goda. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(selectedSoundFile : soundArray[sender.tag - 1])
    }
    
    func playSound(selectedSoundFile : String){
        
        var soundFile = NSURL(fileURLWithPath: Bundle.main.path(forResource: selectedSoundFile, ofType: "wav")!)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundFile as URL)
        }
        catch{
            
            print(error)
        }
        audioPlayer.play()
    }
  

}

