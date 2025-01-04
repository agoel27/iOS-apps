//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Aryan Goel on 3/24/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz {
    let questions = [Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
    Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
    Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
    Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
    Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
    Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
    Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
    Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
    Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
    Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
]
    var questionNum = 0
    
    var score = 0
    
    mutating func checkAns(_ userAns: String) -> Bool {
        if(userAns == questions[questionNum].correctAns) {
            score += 1
            return true
        }
        else {
            return false
        }
    }
    
    mutating func updateQuestionNum () {
        if (questionNum < questions.count - 1) {
            questionNum += 1
            
        }
        else {
            score = 0
            questionNum = 0
        }
    }
    
    func getQuestion() -> String {
        return questions[questionNum].text
    }
    
    func getAns1Title() -> String {
        return questions[questionNum].answers[0]
    }
    
    func getAns2Title() -> String {
        return questions[questionNum].answers[1]
    }
    
    func getAns3Title() -> String {
        return questions[questionNum].answers[2]
    }
    
    func getProgress() -> Float {
        return Float(questionNum + 1) / Float(questions.count)
    }
    
    func getScore() -> Int {
        return score
    }
}
