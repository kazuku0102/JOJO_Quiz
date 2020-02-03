//
//  Question.swift
//  JOJO_Quiz
//
//  Created by 蕭聿莘 on 2020/1/28.
//  Copyright © 2020 Kazuku. All rights reserved.
//

import Foundation

class Question {
    let questionImage: String
    let description: String
    let button01: String
    let button02: String
    let button03: String
    let button04: String
    let correctAnswer: Int
    
    init(image: String,text: String,choice01: String,choice02: String, choice03: String,choice04: String,answer: Int) {
        questionImage = image
        description = text
        button01 = choice01
        button02 = choice02
        button03 = choice03
        button04 = choice04
        correctAnswer = answer
    }
}
