//
//  Model.swift
//  Teki
//
//  Created by Mobile Process on 27/02/2024.
//

import Foundation

struct RandomTextContainer {
    var randomText: String
}


class TextShuffler {
    private var celebrities = [
        "the Steve Jobs", "the Zinedine Zidane", "the Madonna", "the Karl Lagerfeld", "the Scarlett Johansson"
    ]
    private var activities = [
        "from the dancefloor", "from the barbecue", "from the failed surprise", "from the heavy jokes", "from the raclette party"
    ]
    
    public func shuffleRandomText() -> String {
        return "You are " +
        self.celebrities[Int.random(in: 0..<self.celebrities.count)] + " " +
        self.activities[Int.random(in: 0..<self.activities.count)] + " !"
    }
}


extension TekiMainView {
    class ViewModel: ObservableObject {
        @Published private var container: RandomTextContainer
        private let shuffler: TextShuffler
        
        init(initString: String) {
            self.container = RandomTextContainer(randomText: initString)
            self.shuffler = TextShuffler()
        }
        
        convenience init() {
            self.init(initString: TextShuffler().shuffleRandomText())
        }
        
        public func shuffle() {
            self.container.randomText = self.shuffler.shuffleRandomText()
        }
        
        public func getContainer() -> RandomTextContainer {
            return self.container
        }
    }
}
