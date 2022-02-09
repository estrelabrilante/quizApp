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
    
    //let quiz = [["Four plus two is equals to six","True"], ["Five - Three is greater than one","False"], ["Three + eight is less than Ten","False"]]
    //Structure
    
    let quiz = [Question(text:"Four plus two is equals to six",answer:"True"),Question(text:"Five - Three is greater than one",answer:"False"),Question(text:"Three + eight is less than Ten",answer: "False")]
    var questionNumber = 0;

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle;
        //quiz[Outerlayer][innerlayer] = quiz[position of outer array][position of item in inner layer]
       // let actualAnswer = quiz[questionNumber][1]
        let actualAnswer = quiz[questionNumber].answer;
        if(userAnswer == actualAnswer ){
            print("Right")
        }
        else{
            print("Wrong")
        }
        if questionNumber + 1 < quiz.count
        {  questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        updateUI()
    }
    func updateUI()
    {
       // questionLabel.text = quiz[questionNumber][0]
        questionLabel.text = quiz[questionNumber].answer
    }
}

