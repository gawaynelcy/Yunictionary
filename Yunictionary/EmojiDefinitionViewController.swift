//
//  EmojiDefinitionViewController.swift
//  Yunictionary
//
//  Created by Lau Chin Wei on 24/12/2017.
//  Copyright © 2017 Yun. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var releaseYear: UILabel!
    @IBOutlet weak var category: UILabel!
    //var emojiWindow = "" - changed because what we are passing not only strings into the tableViewController but whatever is in the Emoji objects
    
    var emojiWindow = Emoji()
    
    
    @IBOutlet weak var emojiExplain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emojiWindow.emojiTable
        emojiDefinition.text = emojiWindow.def
        releaseYear.text = "Release date: \(emojiWindow.birthYear)"
        category.text = "Category: \(emojiWindow.category)"
        
        
        // emojiLabel.text = emojiWindow

        // "🎣","🏂","🤾‍♂️","🚴","🎪","🚁","🏯","🗽"
        /*
        if emojiWindow == "🎣" {
            emojiExplain.text = "This is a fish getting fished out of a fishes' fish pond! If you can see this line as the separated line, then the constraint is working and the line = 0 is what's needed to create an extra line to finish this long sentense."
        }
        
        if emojiWindow == "🏂" {
            emojiExplain.text = "This is a skier or ski-man or whatever shit it is, this is... wait... what the fudge I am babbling? This is a ski-man FFS. Just to test the long string tho..."
        }
        if emojiWindow == "🤾‍♂️" {
            emojiExplain.text = "Ahaaaa... now this is an emoji. like WTF? This is an emoji dictionary. But this is a handball player... pfffttt... handball is like an offense for an outfield football player. but well... it is what it is then..."
        }
        if emojiWindow == "🚴" {
            emojiExplain.text = "LOL!!! This guy here looks like a turtle to me. but it's a male cyclist emoji..."
        }
        if emojiWindow == "🎪" {
            emojiExplain.text = "Circus!!!"
        }
        if emojiWindow == "🚁" {
            emojiExplain.text = "Helikopter... No... What I meant was Helicopter with the silent C and C being replaced by a K as pronunciation!."
        }
        if emojiWindow == "🏯" {
            emojiExplain.text = "Hahahahahahahahahahha... A cake... But no. It is not. It is a Japanese castle."
        }
        if emojiWindow == "🗽" {
            emojiExplain.text = "Easy... A woman with a torch!!! LOL!!!"
        }
 */
    }

}
