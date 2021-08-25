//
//  Sound.swift
//  CalcSpeedGame
//
//  Created by 今別府勇吾 on 2021/08/25.
//

import Foundation
import UIKit
import AVFoundation

class Sound:NSObject{
    var player: AVAudioPlayer?
    
    
    func playSound(name:String){
        let path = Bundle.main.bundleURL.appendingPathComponent(name + ".mp3")
        do{
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player?.play()
        } catch{
            
        }
    }
    
}
