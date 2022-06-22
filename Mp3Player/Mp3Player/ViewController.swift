//
//  ViewController.swift
//  Mp3Player
//
//  Created by Mekala Vamsi Krishna on 14/06/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func musicFiles() {
        let bundle = Bundle.main
        
        guard let music = bundle.path(forResource: "03 Yellae Lama", ofType: "mp3") else { return }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: music))
            print("music found")
        } catch {
            print("music file not found")
        }
    }
    @IBAction func playButtonTapped(_ sender: UIButton) {
        musicFiles()
        audioPlayer.play()
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        musicFiles()
        audioPlayer.stop()
    }
    
}

