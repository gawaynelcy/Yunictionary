//
//  EmojiTableViewController.swift
//  Yunictionary
//
//  Created by Lau Chin Wei on 24/12/2017.
//  Copyright © 2017 Yun. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis : [Emoji] = []
    // var emojis = ["🎣","🏂","🤾‍♂️","🚴","🎪","🚁","🏯","🗽"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.emojiTable) - \(emoji.birthYear)"
        // cell.textLabel?.text = emojis[indexPath.row].category - changed due to codes calling from class
        // cell.textLabel?.text = emojis[indexPath.row]
        return cell

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emojiList = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emojiList)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefi = segue.destination as! EmojiDefinitionViewController
        emojiDefi.emojiWindow = sender as! Emoji
    }
    
    // "🎣","🏂","🤾‍♂️","🚴","🎪","🚁","🏯","🗽"
    
    func createEmojis() -> [Emoji] {
        let fishing = Emoji()
        fishing.emojiTable = "🎣"
        fishing.def = "I caught a fish"
        fishing.birthYear = 2015
        fishing.category = "Others"
        
        let ski = Emoji()
        ski.emojiTable = "🏂"
        ski.def = "I've tried ski boarding"
        ski.birthYear = 2017
        ski.category = "Sports"
        
        let handball = Emoji()
        handball.emojiTable = "🤾‍♂️"
        handball.def = "Handball is not my favorite sports"
        handball.birthYear = 2017
        handball.category = "Sports"
        
        let cycling = Emoji()
        cycling.emojiTable = "🚴"
        cycling.def = "I love cycling but I am too lazy to do that"
        cycling.birthYear = 2016
        cycling.category = "Sports"
        
        let funfair = Emoji()
        funfair.emojiTable = "🎪"
        funfair.def = "A place I love to visit when I was a little boy"
        funfair.birthYear = 2014
        funfair.category = "Building"
        
        let helicopter = Emoji()
        helicopter.emojiTable = "🚁"
        helicopter.def = "Wish I could afford to ride this around my country"
        helicopter.birthYear = 2013
        helicopter.category = "Vehicle"
        
        let japCastle = Emoji()
        japCastle.emojiTable = "🏯"
        japCastle.def = "The place in Asia I love to visit most"
        japCastle.birthYear = 2012
        japCastle.category = "Building"
        
        let statueOfLib = Emoji()
        statueOfLib.emojiTable = "🗽"
        statueOfLib.def = "One of the most famous architecture in the world"
        statueOfLib.birthYear = 2011
        statueOfLib.category = "Building"
        
        return [fishing, ski, handball, cycling, funfair, helicopter, japCastle, statueOfLib]
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
