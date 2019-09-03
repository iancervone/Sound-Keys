//
//  ViewController.swift
//  Sound-Keys
//
//  Created by Ian Cervone on 9/3/19.
//  Copyright © 2019 Ian Cervone. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

  var keySound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1", ofType: "wav")!)
  var player: AVAudioPlayer?
  
  @IBAction func SoundKeyButton(_ sender: UIButton) {
    let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
    do {
      player = try AVAudioPlayer(contentsOf: url)
      guard let player = player else { return }
      
      player.prepareToPlay()
      player.play()
    } catch let error as Error {
      print(error)
    }
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

