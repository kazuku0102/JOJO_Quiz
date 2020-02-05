//
//  ChoiceViewController.swift
//  JOJO_Quiz
//
//  Created by 蕭聿莘 on 2020/1/28.
//  Copyright © 2020 Kazuku. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var roleImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var optionButtonA: UIButton!
    @IBOutlet weak var optionButtonB: UIButton!
    @IBOutlet weak var optionButtonC: UIButton!
    @IBOutlet weak var optionBittonD: UIButton!
    
    let allQuestion = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    var seconds = 30
    var timer: Timer?
    var stopTapped = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateImage()
    }
    
    //設定計時器，每隔一秒重複countDown
    override func viewDidAppear(_ animated: Bool) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
    }
    
    @IBAction func buttonTap(_ sender: UIButton) {
        if sender.tag == selectedAnswer{
            print("正解")
            score += 10
            scoreLabel.text = "得分: \(score)"
        }else{
            print("錯誤")
        }
        questionNumber += 1
        updateQuestion()
        }
    
    //按下TheWorld時間暫停三秒
    @IBAction func stopTap(_ sender: UIButton) {
        timer?.fireDate = Date.distantFuture
        timer?.fireDate = Date.init(timeIntervalSinceNow: 5.0)
//普通寫法，由按鈕控制
//        if self.stopTapped == false {
//            timer?.invalidate()
//            self.stopTapped = true
//        }else if self.stopTapped == true{
//            viewDidAppear(true)
//            self.stopTapped = false
//        }
    }
      
    func updateQuestion() {
        if questionNumber <= allQuestion.list.count - 1{
            print(UIImage(named: (allQuestion.list[questionNumber].questionImage)))
            roleImageView.image = UIImage(named: (allQuestion.list[questionNumber].questionImage))
            questionLabel.text = allQuestion.list[questionNumber].description
            optionButtonA.setTitle(allQuestion.list[questionNumber].button01, for: UIControl.State.normal)
            optionButtonB.setTitle(allQuestion.list[questionNumber].button02, for: UIControl.State.normal)
            optionButtonC.setTitle(allQuestion.list[questionNumber].button03, for: UIControl.State.normal)
            optionBittonD.setTitle(allQuestion.list[questionNumber].button04, for: UIControl.State.normal)
            selectedAnswer = allQuestion.list[questionNumber].correctAnswer
        }else{
            let alert = UIAlertController(title: "結束", message: "你拿到\(score)分，再玩一次？", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "重新開始", style: .default, handler:{action in self.restart()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        updateImage()
    }
    
    func updateImage() {
        scoreLabel.text = "得分: \(score)"
        numberLabel.text = "\(questionNumber + 1)/\(allQuestion.list.count)"
    }
    
    func restart() {
        score = 0
        questionNumber = 0
        seconds = 30
        updateQuestion()
        viewDidAppear(true)
    }
    
    @objc func countDown(){
        seconds -= 1
        timerLabel.text = "\(seconds)"
        if seconds == 0 {
            timer?.invalidate()
            timer = nil
            optionButtonA.isEnabled = true
            optionButtonB.isEnabled = true
            optionButtonC.isEnabled = true
            optionBittonD.isEnabled = true
            let alert = UIAlertController(title: "挑戰失敗", message: "超過時間了，再玩一次？", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "重新開始", style: .default, handler:{action in self.restart()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            }
        }
    }


    


