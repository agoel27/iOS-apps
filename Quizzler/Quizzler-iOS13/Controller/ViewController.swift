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
    @IBOutlet weak var ans1Button: UIButton!
    @IBOutlet weak var ans2Button: UIButton!
    @IBOutlet weak var ans3Button: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateQuestion()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAns = sender.currentTitle!
        
        if (quiz.checkAns(userAns)) {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quiz.updateQuestionNum()
        updateQuestion()
    }
    
    func updateQuestion () {
        questionLabel.text = quiz.getQuestion()
        ans1Button.setTitle(quiz.getAns1Title(), for: .normal)
        ans2Button.setTitle(quiz.getAns2Title(), for: .normal)
        ans3Button.setTitle(quiz.getAns3Title(), for: .normal)
        progressBar.progress = quiz.getProgress()
        scoreLabel.text = "Score: \(quiz.getScore())"
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.ans1Button.backgroundColor = UIColor.clear
            self.ans2Button.backgroundColor = UIColor.clear
            self.ans3Button.backgroundColor = UIColor.clear
        }
    }
    
}

