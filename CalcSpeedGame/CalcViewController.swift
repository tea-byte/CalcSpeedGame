//
//  CalcViewController.swift
//  CalcGameTest
//
//  Created by 今別府勇吾 on 2021/08/12.
//

import UIKit
import AVFoundation

class CalcViewController: UIViewController{
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    
    

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    // 他のメソッドでもresultを使う場面があるのでクラス変数として保存する
    
    var num1 : Int = 0
    var num2 : Int = 0
    var num3 : Int = 0
    var num4 : Int = 0
    var num5 : Int = 0
    var num6 : Int = 0
    var num7 : Int = 0
    var num8 : Int = 0
    
    var mode : Int = 0
    var answer :Int = 0
    var point : Int = 0
    var time : Int = 10
    
    

    
    var timer:Timer?
    var player: AVAudioPlayer?
    let colors = Colors()
    let sound = Sound()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        num1 = appDelegate.num1
        num2 = appDelegate.num2
        num3 = appDelegate.num3
        num4 = appDelegate.num4
        num5 = appDelegate.num5
        num6 = appDelegate.num6
        num7 = appDelegate.num7
        num8 = appDelegate.num8
        


        // Do any additional setup after loading the view.
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(CalcViewController.countTime), userInfo: nil, repeats: true)
        setButttonTitle()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        debugPrint(mode)
        debugPrint(num1)
        
        if mode == 1{
            print("足し算モード")
            makeNewQuestion()
        }else if mode == 2{
            makeMinusNewQuestion()
            print("引き算モード")
        }else if mode == 3{
            makeTimesNewQuestion()
            print("掛け算モード")
        }else if mode == 4{
            makedivdeNewQuestion()
            print("割り算モード")
        }else{
            let select = Int.random(in: 1...4)
            switch select {
                case 1:
                    makeNewQuestion()
                case 2:
                    makeMinusNewQuestion()
                case 3:
                    makeTimesNewQuestion()
                case 4:
                    makedivdeNewQuestion()
                default:
                    makeNewQuestion()
            }
        }
        setButttonTitle()
        
        button1.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
        button3.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
        button4.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
        
    }
    @objc func countTime(){
        time -= 1
        timeLabel.text = "残り:\(time)秒"
        if time == 0{
            timer?.invalidate()

            if mode == 1{
                let resutlVC = self.storyboard?.instantiateViewController(withIdentifier: "goToResult") as! ResultViewController
                resutlVC.mode = mode
                resutlVC.point = point
                resutlVC.modalPresentationStyle = .fullScreen
                self.present(resutlVC, animated: true, completion: nil)

            }else if mode == 2{
                let resutlVC = self.storyboard?.instantiateViewController(withIdentifier: "goToResult") as! ResultViewController
                resutlVC.mode = mode
                resutlVC.point = point
                resutlVC.modalPresentationStyle = .fullScreen
                self.present(resutlVC, animated: true, completion: nil)
            }else if mode == 3{
                let resutlVC = self.storyboard?.instantiateViewController(withIdentifier: "goToResult") as! ResultViewController
                resutlVC.mode = mode
                resutlVC.point = point
                resutlVC.modalPresentationStyle = .fullScreen
                self.present(resutlVC, animated: true, completion: nil)
            }else if mode == 4{
                let resutlVC = self.storyboard?.instantiateViewController(withIdentifier: "goToResult") as! ResultViewController
                resutlVC.mode = mode
                resutlVC.point = point
                resutlVC.modalPresentationStyle = .fullScreen
                self.present(resutlVC, animated: true, completion: nil)
            }else{
                let resutlVC = self.storyboard?.instantiateViewController(withIdentifier: "goToResult") as! ResultViewController
                resutlVC.mode = mode
                resutlVC.point = point
                resutlVC.modalPresentationStyle = .fullScreen
                self.present(resutlVC, animated: true, completion: nil)
                
            }
            
        }
    }

//     結果画面にpointを渡す関数

    @objc func onButton(_ sender:UIButton){
        let input = Int(sender.currentTitle!)
        if input == answer {
            resultLabel.text = "前回の問題　: 正解"
            point += 10
            sound.playSound(name: "correct")
        }else{
            resultLabel.text = "前回の問題　: 不正解"
            if point >= 10{
                point -= 10
            }
            sound.playSound(name: "incorrect")
        }
        switch mode {
            case 1:
                makeNewQuestion()
            case 2:
                makeMinusNewQuestion()
            case 3:
                makeTimesNewQuestion()
            case 4:
                makedivdeNewQuestion()
            default:
                makeNewQuestion()
        }
        setButttonTitle()
    }
//    足し算の問題を作る関数
    func makeNewQuestion(){
        let bigNum = searchbigNum(n1: num1, n2: num2)
        let a1 = Int.random(in: 0...bigNum)
        let a2 = Int.random(in: 0...bigNum)
        questionLabel.text = "\(a1) + \(a2) = "
        answer = a1 + a2
    }
//    引き算の問題をつくる関数
    func makeMinusNewQuestion(){
        let bigNum = searchbigNum(n1: num1, n2: num2)
        let a1 = Int.random(in: 0...bigNum)
        let a2 = Int.random(in: 0...bigNum)
        questionLabel.text = "\(a1) - \(a2) = "
        answer = a1 - a2
    }
//    掛け算の問題を作る関数
    func makeTimesNewQuestion(){
        let bigNum = searchbigNum(n1: num1, n2: num2)
        let a1 = Int.random(in: 0...bigNum)
        let a2 = Int.random(in: 0...bigNum)
        questionLabel.text = "\(a1) × \(a2) = "
        answer = a1 * a2
        print(answer)
    }
//    割り算の問題を作る関数
    func makedivdeNewQuestion(){
        let bigNum = searchbigNum(n1: num7, n2: num8)
        while true {
            var a1 = Int.random(in: 1...bigNum)
            var a2 = Int.random(in: 1...bigNum)
            if a1 > a2{
                let tmp = a1
                a1 = a2
                a2 = tmp
                
            }
            if a1 % a2 == 0{
                questionLabel.text = "\(a1) ÷ \(a2) = "
                answer = a1 / a2
                break
            }else{
                continue
            }
        }
    }
    
    func setButttonTitle(){
        var answerList = [answer]
        while answerList.count < 4 {
            
            let randomAnswer = Int.random(in: -49...400)
//            ifの前に！をつけると真偽を逆にできる。
//            もしanswerlistの中にrandomanswerの値がなければ
            
        
            if !answerList.contains(randomAnswer){
                answerList.append(randomAnswer)
            }
        }
            answerList.shuffle()
            button1.setTitle(String(answerList[0]), for: .normal)
            button2.setTitle(String(answerList[1]), for: .normal)
            button3.setTitle(String(answerList[2]), for: .normal)
            button4.setTitle(String(answerList[3]), for: .normal)
        }
    
        func searchbigNum(n1:Int, n2:Int) -> Int{
        if n1 > n2{
            return n1
        }else{
            return n2
        }
        
    }
    
}
    


