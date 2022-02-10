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
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    //2D Array
    
    /*let quiz = [["Four plus two is equals to six","True"], ["Five - Three is greater than one","False"], ["Three + eight is less than Ten","False"]]*/
    //Structure
    /* Array of question object
    let quiz = [Question(q:"Four plus two is equals to six",a:"True"),Question(q:"Five - Three is greater than one",a:"False"),Question(q:"Three + eight is less than Ten",a: "False")]*/
    let quiz =
        [  Question(q: "A slug's blood is green.", a: "True"),
                Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                Question(q: "Google was originally called 'Backrub'.", a: "True"),
                Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        ]
    var questionNumber = 0;
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        
    }
        @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle;
        //quiz[Outerlayer][innerlayer] = quiz[position of outer array][position of item in inner layer]
     //  let actualAnswer = quiz[questionNumber][1]
        let actualAnswer = quiz[questionNumber].answer;
        if(userAnswer == actualAnswer ){
           // print("Right")
            trueButton.backgroundColor = UIColor.green
                   }
        else{
           // print("Wrong")
            falseButton.backgroundColor = UIColor.red
            
        }
        if questionNumber + 1 < quiz.count
        {  questionNumber += 1
                    
        }
        else{
            questionNumber = 0
        }
            timer = Timer.scheduledTimer(timeInterval: 1.0 , target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            
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
       // questionLabel.text = quiz[questionNumber][0];
       questionLabel.text = quiz[questionNumber].text
        
    }
}

