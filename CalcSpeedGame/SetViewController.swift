//
//  SetViewController.swift
//  CalcSpeedGame
//
//  Created by 今別府勇吾 on 2021/08/22.
//

import UIKit

class SetViewController: UIViewController, UITextFieldDelegate {
    var appDelegate: AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    let colors = Colors()
    let sound = Sound()

    @IBOutlet weak var imView: UIImageView!
    
    let maxLength = 2
    var flag = false
    
    var num1 : Int? = 0
    var num2 : Int? = 0
    var num3 : Int? = 0
    var num4 : Int? = 0
    var num5 : Int? = 0
    var num6 : Int? = 0
    var num7 : Int? = 0
    var num8 : Int? = 0
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var text5: UITextField!
    @IBOutlet weak var text6: UITextField!
    @IBOutlet weak var text7: UITextField!
    @IBOutlet weak var text8: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        text1.delegate = self
        text2.delegate = self
        text3.delegate = self
        text4.delegate = self
        text5.delegate = self
        text6.delegate = self
        text7.delegate = self
        text8.delegate = self
        
        num1 = appDelegate.num1
        num2 = appDelegate.num2
        num3 = appDelegate.num3
        num4 = appDelegate.num4
        num5 = appDelegate.num5
        num6 = appDelegate.num6
        num7 = appDelegate.num7
        num8 = appDelegate.num8
        
        text1.text = String(UserDefaults.standard.integer(forKey: "num1"))
        text2.text = String(UserDefaults.standard.integer(forKey: "num2"))
        text3.text = String(UserDefaults.standard.integer(forKey: "num3"))
        text4.text = String(UserDefaults.standard.integer(forKey: "num4"))
        text5.text = String(UserDefaults.standard.integer(forKey: "num5"))
        text6.text = String(UserDefaults.standard.integer(forKey: "num6"))
        text7.text = String(UserDefaults.standard.integer(forKey: "num7"))
        text8.text = String(UserDefaults.standard.integer(forKey: "num8"))



        
        observe(text1)
        observe(text2)
        observe(text3)
        observe(text4)
        observe(text5)
        observe(text6)
        observe(text7)
        observe(text8)
        
                                               
        

 


        // Do any additional setup after loading the view.
        
    }
    
    

    

    
    
    
    
    @IBAction func text1Set(_ sender: Any) {
        num1 = Int(text1.text!)
        //num1がnilかどうかみている
        if let testNum1 = num1{
            if testNum1 != 0{
                UserDefaults.standard.setValue(testNum1, forKey: "num1")
                text1.text = String(testNum1)
//                改善の必要性あり
            }else{
                text1.text = UserDefaults.standard.string(forKey: "num1")
                num1 = UserDefaults.standard.integer(forKey: "num1")
            }
        }else{
            text1.text = UserDefaults.standard.string(forKey: "num1")
            num1 = UserDefaults.standard.integer(forKey: "num1")
        }
    }
    
    
    
    @IBAction func text2Set(_ sender: Any) {
        num2 = Int(text2.text!)
        if let testNum2 = num2{
            if testNum2 != 0{
                UserDefaults.standard.setValue(testNum2, forKey: "num2")
                text2.text = String(testNum2)

//                改善の必要性あり
            }else{
                text2.text = UserDefaults.standard.string(forKey: "num2")
                num2 = UserDefaults.standard.integer(forKey: "num2")
            }
        }else{
            text2.text = UserDefaults.standard.string(forKey: "num2")
            num2 = UserDefaults.standard.integer(forKey: "num2")
        }
    }
    
    
    
    
    @IBAction func textSet3(_ sender: Any) {
        var num3 : Int? = Int(text3.text!)
        if let testNum3 = num3{
            if testNum3 != 0{
                UserDefaults.standard.setValue(testNum3, forKey: "num3")
                text3.text = String(testNum3)

//                改善の必要性あり
            }else{
                text3.text = UserDefaults.standard.string(forKey: "num3")
                num3 = UserDefaults.standard.integer(forKey: "num3")
            }
        }else{
            text3.text = UserDefaults.standard.string(forKey: "num3")
            num3 = UserDefaults.standard.integer(forKey: "num3")
        }
    }
    
    
    
    @IBAction func textSet4(_ sender: Any) {
        var num4 : Int? = Int(text4.text!)
        if let testNum4 = num4{
            if testNum4 != 0{
                UserDefaults.standard.setValue(testNum4, forKey: "num4")
                text4.text = String(testNum4)
//                let vc = self.storyboard?.instantiateViewController(withIdentifier: "goToCalc") as! CalcViewController
//                vc.num4 = testNum4
//                改善の必要性あり
            }else{
                text4.text = UserDefaults.standard.string(forKey: "num4")
                num4 = UserDefaults.standard.integer(forKey: "num4")
            }
        }else{
            text5.text = UserDefaults.standard.string(forKey: "num4")
            num4 = UserDefaults.standard.integer(forKey: "num4")
        }
    }
    
    @IBAction func textSet5(_ sender: Any) {
        var num5 : Int? = Int(text5.text!)
        if let testNum5 = num5{
            if testNum5 != 0{
                UserDefaults.standard.setValue(testNum5, forKey: "num5")
                text5.text = String(testNum5)

//                改善の必要性あり
            }else{
                text5.text = UserDefaults.standard.string(forKey: "num5")
                num5 = UserDefaults.standard.integer(forKey: "num5")
            }
        }else{
            text5.text = UserDefaults.standard.string(forKey: "num5")
            num5 = UserDefaults.standard.integer(forKey: "num5")
        }
    }
    
    @IBAction func textSet6(_ sender: Any) {
        var num6 : Int? = Int(text6.text!)
        if let testNum6 = num6{
            if testNum6 != 0{
                UserDefaults.standard.setValue(testNum6, forKey: "num6")
                text6.text = String(testNum6)

//                改善の必要性あり
            }else{
                text6.text = UserDefaults.standard.string(forKey: "num6")
                num6 = UserDefaults.standard.integer(forKey: "num6")
            }
        }else{
            text6.text = UserDefaults.standard.string(forKey: "num6")
            num6 = UserDefaults.standard.integer(forKey: "num6")
        }
    }
    
    @IBAction func textSet7(_ sender: Any) {
        var num7 : Int? = Int(text7.text!)
        if let testNum7 = num7{
            if testNum7 != 0{
                UserDefaults.standard.setValue(testNum7, forKey: "num7")
                text7.text = String(testNum7)
 
//                改善の必要性あり
            }else{
                text7.text = UserDefaults.standard.string(forKey: "num7")
                num7 = 1
            }
        }else{
            text7.text = UserDefaults.standard.string(forKey: "num7")
            num7 = UserDefaults.standard.integer(forKey: "num7")
        }
    }
    
    @IBAction func textSet8(_ sender: Any) {
        var num8 : Int? = Int(text8.text!)
        if let testNum8 = num8{
            if testNum8 != 0{
                UserDefaults.standard.setValue(testNum8, forKey: "num8")
                text8.text = String(testNum8)
//                改善の必要性あり
            }else{
                text8.text = UserDefaults.standard.string(forKey: "num8")
                num8 = UserDefaults.standard.integer(forKey: "num8")
            }
        }else{
            text8.text = UserDefaults.standard.string(forKey: "num8")
            num8 = UserDefaults.standard.integer(forKey: "num8")
        }
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        sound.playSound(name: "decide")
    }
    
    //textField以外の部分のタッチ時にキーボード閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func observe(_ textField : UITextField){
        NotificationCenter.default.addObserver(self,selector:#selector(textFieldDidChange(notification:)),
                                        name: UITextField.textDidChangeNotification,
                                               object: textField)
        
    }

    // 入力チェック(文字数チェック)処理
    @objc func textFieldDidChange(notification: NSNotification) {
        let textField = notification.object as! UITextField

        if let text = textField.text {
            if textField.markedTextRange == nil && text.count > maxLength {
                textField.text = text.prefix(maxLength).description
            }
        }
    }


    


}
