//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let storyTitle: String
    let firstChoice: String
    let firstChoiceDest: Int
    let secondChoice: String
    let secondChoiceDest: Int
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        storyTitle = title
        firstChoice = choice1
        firstChoiceDest = choice1Destination
        secondChoice = choice2
        secondChoiceDest = choice2Destination
    }
}
