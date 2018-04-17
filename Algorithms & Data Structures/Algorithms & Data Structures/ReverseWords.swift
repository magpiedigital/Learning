//
//  ReverseWords.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

var str = "Let's start to today by completing an interesting challenge"

func reverseWordsInSentence(sentence: String) -> String {
    var newSentence = ""
    let array = sentence.removeVowels().components(separatedBy: " ")
    for (index, word) in array.enumerated() {
        if index % 2 == 1 {
            newSentence += String(array[index].reversed()) + " "
        } else {
            newSentence += word + " "
        }
    }
    return newSentence
}

extension String {
    func removeVowels() -> String {
        let vowels = ["a", "e", "i", "o", "u"]
        var newString = self
        for vowel in vowels {
            newString = newString.replacingOccurrences(of: vowel, with: "")
        }
        return newString
    }
}
