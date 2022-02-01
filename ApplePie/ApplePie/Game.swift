//
//  Game.swift
//  ApplePie
//
//  Created by Muhamad Kataw on 1/31/22.
//

import Foundation


struct Game {
    var word: String
    var incorrectMovesRemaing: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        
        if !word.contains(letter) {
            incorrectMovesRemaing -= 1
        }
    }
}

