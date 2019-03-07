//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController, AVAudioPlayerDelegate {
    let array = ["note1","note2","note3","note4","note5","note6","note7",]

    var select : String = ""

    var soundFor : AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        select = array[sender.tag-1]
        
        sound()
    }
    
    func sound(){
        let soundme = Bundle.main.url (forResource: select, withExtension: "wav")
        do{
            try soundFor = AVAudioPlayer(contentsOf: soundme!)
        }catch{
            print(error)
        }
        soundFor.play()
    }

        
        
    }
 


