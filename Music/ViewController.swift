//
//  ViewController.swift
//  Music
//
//  Created by Rika Sumitomo on 2019/04/10.
//  Copyright © 2019 Rika Sumitomo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!

    @IBAction func natsuPlayButton(){
        setAudioPlayer(soundName: "natsu", type: "mp3")
        audioPlayer.play()
    }
    @IBAction func amePlayButotn(){
        setAudioPlayer(soundName: "ame", type: "mp3")
        audioPlayer.play()
    }
    @IBAction func akiPlayButton(){
        setAudioPlayer(soundName: "aki", type: "mp3")
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setAudioPlayer(soundName: String, type: String) {
        let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
        } catch {
            print("音楽ファイルが読み込めませんでした")
        }
    }

}

