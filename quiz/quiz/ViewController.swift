//
//  ViewController.swift
//  quiz
//
//  Created by Andrea on 1/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() { //override: a subclass provides its own custom implementation of an instance method
        super.viewDidLoad() //calling the superclass method, do this when you wanna use the existing superclass implementation as part of your override.
        questionLabel.text = questions[currentQuestionIndex]
    }

    @IBOutlet var questionLabel: UILabel! // !force unwrapped bc u will connect it
    @IBOutlet var answerLabel: UILabel! //IBOulet tells Xcode that you will connect these utlets to label objects using Interface Builder.
    
    let questions: [String] = [
        "What's 7+7",
        "What's the capital of Vermont?",
        "What's cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var currentQuestionIndex: Int = 0
    
    
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question : String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer : String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

}

