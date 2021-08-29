//
//  ModeViewController.swift
//  CalcSpeedGame
//
//  Created by 今別府勇吾 on 2021/08/14.
//

import UIKit
import AVFoundation

class ModeViewController: UIViewController {
    
    var mode = 0
    var timer:Timer?
    var player: AVAudioPlayer?
    let colors = Colors()
    let sound = Sound()

    
    @IBOutlet weak var plusModeButton: UIButton!
    @IBOutlet weak var minusModeButton: UIButton!
    @IBOutlet weak var timesModeButton: UIButton!
    @IBOutlet weak var divideModeButton: UIButton!
    @IBOutlet weak var allMode: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusModeButton.layer.cornerRadius = 10.0
        minusModeButton.layer.cornerRadius = 10.0
        timesModeButton.layer.cornerRadius = 10.0
        divideModeButton.layer.cornerRadius = 10.0
        allMode.layer.cornerRadius = 10.0
        
    
    }
    
    
    @IBAction func plusButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "goToCalc") as! CalcViewController
        sound.playSound(name: "decide")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        mode = 1
        vc.mode = mode
    }
    

    @IBAction func minusButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "goToCalc") as! CalcViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        sound.playSound(name: "decide")
        mode = 2
        vc.mode = mode
    }
    
    
    @IBAction func timesButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "goToCalc") as! CalcViewController
        vc.modalPresentationStyle = .fullScreen
        sound.playSound(name: "decide")
        self.present(vc, animated: true, completion: nil)
        mode = 3
        vc.mode = mode
    }
    
    
    @IBAction func divideButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "goToCalc") as! CalcViewController
        vc.modalPresentationStyle = .fullScreen
        sound.playSound(name: "decide")
        self.present(vc, animated: true, completion: nil)
        mode = 4
        vc.mode = mode
    }
    
    @IBAction func allButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "goToCalc") as! CalcViewController
        vc.modalPresentationStyle = .fullScreen
        sound.playSound(name: "decide")
        self.present(vc, animated: true, completion: nil)
        mode = 5
        vc.mode = mode
    }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        sound.playSound(name: "decide")
    
    }
    
}
