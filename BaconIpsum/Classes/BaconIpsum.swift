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
    
    public static let baseVeg = [
                                "acorn squash",
                                "alfalfa sprout",
                                "amaranth",
                                "anise",
                                "artichoke",
                                "arugula",
                                "asparagus",
                                "aubergine",
                                "azuki bean",
                                "banana squash",
                                "basil",
                                "bean sprout",
                                "beet",
                                "black bean",
                                "black-eyed pea",
                                "bok choy",
                                "borlotti bean",
                                "broad beans",
                                "broccoflower",
                                "broccoli",
                                "brussels sprout",
                                "butternut squash",
                                "cabbage",
                                "calabrese",
                                "caraway",
                                "carrot",
                                "cauliflower",
                                "cayenne pepper",
                                "celeriac",
                                "celery",
                                "chamomile",
                                "chard",
                                "chayote",
                                "chickpea",
                                "chives",
                                "cilantro",
                                "collard green",
                                "corn",
                                "corn salad",
                                "courgette",
                                "cucumber",
                                "daikon",
                                "delicata",
                                "dill",
                                "eggplant",
                                "endive",
                                "fennel",
                                "fiddlehead",
                                "frisee",
                                "garlic",
                                "gem squash",
                                "ginger",
                                "green bean",
                                "green pepper",
                                "habanero",
                                "herbs and spice",
                                "horseradish",
                                "hubbard squash",
                                "jalapeno",
                                "jerusalem artichoke",
                                "jicama",
                                "kale",
                                "kidney bean",
                                "kohlrabi",
                                "lavender",
                                "leek ",
                                "legume",
                                "lemon grass",
                                "lentils",
                                "lettuce",
                                "lima bean",
                                "mamey",
                                "mangetout",
                                "marjoram",
                                "mung bean",
                                "mushroom",
                                "mustard green",
                                "navy bean",
                                "new zealand spinach",
                                "nopale",
                                "okra",
                                "onion",
                                "oregano",
                                "paprika",
                                "parsley",
                                "parsnip",
                                "patty pan",
                                "pea",
                                "pinto bean",
                                "potato",
                                "pumpkin",
                                "radicchio",
                                "radish",
                                "rhubarb",
                                "rosemary",
                                "runner bean",
                                "rutabaga",
                                "sage",
                                "scallion",
                                "shallot",
                                "skirret",
                                "snap pea",
                                "soy bean",
                                "spaghetti squash",
                                "spinach",
                                "squash ",
                                "sweet potato",
                                "tabasco pepper",
                                "taro",
                                "tat soi",
                                "thyme",
                                "topinambur",
                                "tubers",
                                "turnip",
                                "wasabi",
                                "water chestnut",
                                "watercress",
                                "white radish",
                                "yam",
                                "zucchini"
                            ]
    
    
    /// Returns Bacon or Veg goodness for your placeholder needs
    ///
    /// - Parameters:
    ///   - withSentences: How many sentences you'd like ?
    ///   - withWords: How many Word you'd like ?
    ///   - withParagraphs: How many full paragraphs you'd like ?
    ///   - vegetarian: Replace bacon with vegetables for Healthier placeholders.
    /// - Returns: String of placeholder text
    
    public static func giveMeBacon(withSentences: Int? = nil, withWords: Int? = nil, withParagraphs: Int? = nil, vegetarian: Bool? = false )->String {
       var returnBaconString = ""
        let baseFood = vegetarian! ? baseVeg : baseMeats
        if let withParagraphs = withParagraphs {
            for _ in 1...withParagraphs {
                returnBaconString += makeAParagraph(words: baseFood)
            }
            return returnBaconString
        } else if let withWords = withWords {
            for end in 1...withWords {
                returnBaconString += baseFood[Int.random(in: 0...baseFood.count-1)]
                if (end != withWords) {
                    returnBaconString += " "
                }
            }
            return returnBaconString.capitalizingFirstLetter()
        } else if let withSentences = withSentences {
            for _ in 1...withSentences {
                returnBaconString += "\(makeASentence(words: baseFood)). "
            }
            return returnBaconString
        } else {
            return baseFood[Int.random(in: 0...baseFood.count-1)].capitalizingFirstLetter()
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
