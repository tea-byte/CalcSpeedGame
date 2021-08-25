//
//  ViewController.swift
//  CalcGameTest
//
//  Created by 今別府勇吾 on 2021/07/27.
//

import UIKit
import AVFoundation


class ViewController: UIViewController{
    
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var imView: UIImageView!
    
    var timer:Timer?
    var player: AVAudioPlayer?
    let colors = Colors()
    let sound = Sound()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setUpGradation()
        setup()
        appDelegate.num1 = UserDefaults.standard.integer(forKey: "num1")
        appDelegate.num2 = UserDefaults.standard.integer(forKey: "num2")
        appDelegate.num3 = UserDefaults.standard.integer(forKey: "num3")
        appDelegate.num4 = UserDefaults.standard.integer(forKey: "num4")
        appDelegate.num5 = UserDefaults.standard.integer(forKey: "num5")
        appDelegate.num6 = UserDefaults.standard.integer(forKey: "num6")
        appDelegate.num7 = UserDefaults.standard.integer(forKey: "num7")
        appDelegate.num8 = UserDefaults.standard.integer(forKey: "num8")
        


        
    }
    
    func setUpGradation() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        gradientLayer.colors = [colors.blue.cgColor, colors.webSafeColor.cgColor]
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 1, y: 1)
        imView.layer.addSublayer(gradientLayer)
    }

    @IBAction func highScoreButto(_ sender: Any) {
        self.performSegue(withIdentifier: "toHighScore", sender: nil)
        sound.playSound(name: "decide")
    }
    
    @IBAction func modeButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toMode", sender: nil)
        sound.playSound(name: "decide")
    }
    
    func setup() {
        UserDefaults.standard.set(false, forKey: "visit") //リセット用
        
        let visit = UserDefaults.standard.bool(forKey: "visit")
        if visit {
            //二回目以降
            print("二回目以降")
//            let appDomain = Bundle.main.bundleIdentifier
//            UserDefaults.standard.removePersistentDomain(forName: appDomain!)


        } else {
            //初回アクセス
            print("初回起動")
            UserDefaults.standard.set(true, forKey: "visit")
            UserDefaults.standard.register(defaults: ["num1" : 1])
            UserDefaults.standard.register(defaults: ["num2" : 99])
            UserDefaults.standard.register(defaults: ["num3" : 1])
            UserDefaults.standard.register(defaults: ["num4" : 99])
            UserDefaults.standard.register(defaults: ["num5" : 1])
            UserDefaults.standard.register(defaults: ["num6" : 99])
            UserDefaults.standard.register(defaults: ["num7" : 1])
            UserDefaults.standard.register(defaults: ["num8" : 99])
        }
    }

    

    
    
}

