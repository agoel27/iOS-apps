//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Aryan Goel on 3/24/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let correctAns: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        correctAns = correctAnswer
    }
}
