//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Adriel Teles on 05/10/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz: [Question] = [
        Question(text: "A slug's blood is green.", answer: "True"),
        Question(text: "Approximately one quarter of human bones are in the feet.", answer:"True"),
        Question(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
        Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
        Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
        Question(text: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
        Question(text: "You can lead a cow down stairs but not up stairs.", answer: "False"),
        Question(text: "Google was originally called 'Backrub'.", answer: "True"),
        Question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
        Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
        Question(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
        Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
    ]
    
    var questionNumber: Int = 0
    var score: Int = 0
    
    
    mutating func checkAnswer( _ userAnswer:String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            self.score += 1
            return true
        }else{
            return false
        }
        
    }
    func getQuestioneText() -> String {
        return self.quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber+1)/Float(self.quiz.count)
    }
    
    
    mutating func nextQuestion(){
        
        if questionNumber+1 < self.quiz.count {
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int{
        return self.score
    }
    
}
