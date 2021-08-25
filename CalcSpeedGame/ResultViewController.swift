//
//  ResultViewController.swift
//  CalcGameTest
//
//  Created by 今別府勇吾 on 2021/08/12.
//

import UIKit

class ResultViewController: UIViewController {
    var point:Int = 0
    var mode:Int = 0
    var maxpoint:Int = 0
    var frontRecord:String = ""
    let colors = Colors()
    let sound = Sound()
    
    

    @IBOutlet weak var modeLabel: UILabel!
    @IBOutlet weak var finishLabel: UILabel!
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var MaxLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        switch mode {
            case 1:
                frontRecord = "plus"
            case 2:
                frontRecord = "minus"
            case 3:
                frontRecord = "times"
            case 4:
                frontRecord = "divide"
            case 5:
                frontRecord = "all"
            default:
                frontRecord = ""
        }
        setModeLabel(mode: mode)
        recordLabel.text = "あなたの記録:\(point)P"
        maxpoint = setModeMaxRecode(mode: mode)
        
        if point > maxpoint{
            UserDefaults.standard.setValue(point, forKey: "\(frontRecord)record")
            MaxLabel.text = "最高記録:\(point)P"
        }else {
            MaxLabel.text = "最高記録:\(maxpoint)P"
        }

    }
    
    @IBAction func onBackTop(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "home") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        sound.playSound(name: "decide")
        self.present(vc, animated: true, completion: nil)
        
  

    }
    
    func setModeLabel(mode:Int){
        if mode == 1{
            modeLabel.text = "足し算モード"

        }else if mode == 2{
            modeLabel.text = "引き算モード"
        }else if mode == 3{
            modeLabel.text = "掛け算モード"
        }else if mode == 4{
            modeLabel.text = "割り算モード"
        }else{
            modeLabel.text = "総合モード"
        }
        
    }
    func setModeMaxRecode(mode:Int) ->Int{
        if mode == 1{
            UserDefaults.standard.register(defaults: ["plusrecord" : 0])
            let plusMaxPoint = UserDefaults.standard.integer(forKey: "plusrecord")
            return plusMaxPoint

        }else if mode == 2{
            UserDefaults.standard.register(defaults: ["minusrecord" : 0])
            let minusMaxPoint = UserDefaults.standard.integer(forKey: "minusrecord")
            return minusMaxPoint
            
        }else if mode == 3{
            UserDefaults.standard.register(defaults: ["timesrecord" : 0])
            let timesMaxPoint = UserDefaults.standard.integer(forKey: "timesrecord")
            return timesMaxPoint

        }else if mode == 4{
            UserDefaults.standard.register(defaults: ["dividerecord" : 0])
            let divideMaxpoint = UserDefaults.standard.integer(forKey: "dividerecord")
            return divideMaxpoint
        }else{
            UserDefaults.standard.register(defaults: ["allrecord" : 0])
            let allMaxPoint = UserDefaults.standard.integer(forKey: "allrecord")
            return allMaxPoint
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
