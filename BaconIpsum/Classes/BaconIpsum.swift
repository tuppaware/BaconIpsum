//
//  BaconIpsum.swift
//
//
//  Created by Adam Ware on 10/3/19.
//  Copyright © 2019 Adam Ware.
//


public struct BaconIpsum {
    
    public static let baseMeats = ["beef",
                                   "chicken",
                                   "pork",
                                   "bacon",
                                   "chuck",
                                   "short loin",
                                   "sirloin",
                                   "shank",
                                   "flank",
                                   "sausage",
                                   "pork belly",
                                   "shoulder",
                                   "cow",
                                   "pig",
                                   "ground round",
                                   "hamburger",
                                   "meatball",
                                   "tenderloin",
                                   "strip steak",
                                   "t-bone",
                                   "ribeye",
                                   "shankle",
                                   "tongue",
                                   "tail",
                                   "pork chop",
                                   "pastrami",
                                   "corned beef",
                                   "jerky",
                                   "ham",
                                   "fatback",
                                   "ham hock",
                                   "pancetta",
                                   "pork loin",
                                   "short ribs",
                                   "spare ribs",
                                   "beef ribs",
                                   "drumstick",
                                   "tri-tip",
                                   "ball tip",
                                   "venison",
                                   "turkey",
                                   "biltong",
                                   "rump",
                                   "jowl",
                                   "salami",
                                   "bresaola",
                                   "meatloaf",
                                   "brisket",
                                   "boudin",
                                   "andouille",
                                   "capicola",
                                   "swine",
                                   "kielbasa",
                                   "frankfurter",
                                   "prosciutto",
                                   "filet mignon",
                                   "leberkas",
                                   "turducken",
                                   "doner",
                                   "kevin",
                                   "landjaeger",
                                   "porchetta"]
    
    
    public static func giveMeBacon(withSentences: Int? = nil, withWords: Int? = nil, withParagraphs: Int? = nil )->String {
       var returnBaconString = ""
        if let withParagraphs = withParagraphs {
            for _ in 1...withParagraphs {
                returnBaconString += makeAParagraph(words: baseMeats)
            }
            return returnBaconString
        } else if let withWords = withWords {
            for end in 1...withWords {
                returnBaconString += baseMeats[Int.random(in: 0...baseMeats.count-1)]
                if (end != withWords) {
                    returnBaconString += " "
                }
            }
            return returnBaconString.capitalizingFirstLetter()
        } else if let withSentences = withSentences {
            for _ in 1...withSentences {
                returnBaconString += "\(makeASentence(words: baseMeats)). "
            }
            return returnBaconString
        } else {
            return baseMeats[Int.random(in: 0...baseMeats.count-1)].capitalizingFirstLetter()
        }
    }
    
    // interal method to make a sentence.
    private static func makeASentence(words: [String])->String {
        // should be about 4-7 words long
        let rndLength = Int.random(in: 4...7)
        var returnString = ""
        for end in 0...rndLength {
            if (end != rndLength) {
                returnString += "\(words[Int.random(in: 0...words.count-1)]) "
            } else {
                returnString += "\(words[Int.random(in: 0...words.count-1)])"
            }
        }
        return returnString.capitalizingFirstLetter()
    }
    
    // interal method to make a paragraph
    private static func makeAParagraph(words:[String]) ->String {
        // paragraph has 4 - 7 sentence long paragraph
        let rndLength = Int.random(in: 4...7)
        var returnString = ""
        for _ in 0...rndLength {
           returnString += "\(makeASentence(words: words)). "
        }
        return "\(returnString)\n\n"
    }

}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
