//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    @IBAction func answerButton(_ sender: UIButton) {
        let usrAnswer = sender.currentTitle!;
        //quizBrain is object of struct QuizBrain
    let userGotIt = quizBrain.checkAnswer(usrAnswer);
        if userGotIt{
            trueButton.backgroundColor = UIColor.green
        }
        else{
            falseButton.backgroundColor = UIColor.red
        }
    Timer.scheduledTimer(timeInterval: 1.0 , target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        updateUI()
    }
    @objc func updateTimer(){
        if trueButton.backgroundColor == UIColor.green {
            trueButton.backgroundColor = UIColor.clear;
        }else if falseButton.backgroundColor == UIColor.red {
            falseButton.backgroundColor = UIColor.clear
        }
    }
    func updateUI()
    {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
}

