//
//  HighScoreViewController.swift
//  CalcSpeedGame
//
//  Created by 今別府勇吾 on 2021/08/15.
//

import UIKit
import AVFoundation

class HighScoreViewController: UIViewController {
    
    @IBOutlet weak var plusLabel: UILabel!
    @IBOutlet weak var minusLabel: UILabel!
    @IBOutlet weak var timesLabel: UILabel!
    @IBOutlet weak var divideLabel: UILabel!
    @IBOutlet weak var allLabel: UILabel!
    
    var timer:Timer?
    var player: AVAudioPlayer?
    let sound = Sound()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusLabel.text =  String(UserDefaults.standard.integer(forKey: "plusrecord")) + "P"
        minusLabel.text =  String(UserDefaults.standard.integer(forKey: "minusrecord")) + "P"
        timesLabel.text =  String(UserDefaults.standard.integer(forKey: "timesrecord")) + "P"
        divideLabel.text = String(UserDefaults.standard.integer(forKey: "dividerecord")) + "P"
        allLabel.text = String(UserDefaults.standard.integer(forKey: "allrecord")) + "P"
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backHome(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        sound.playSound(name: "decide")
        
        
    }
    


}
