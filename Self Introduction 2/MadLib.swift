//
//  MadLib.swift
//  Self Introduction 2
//
//  Created by Andrew Barber on 9/7/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class MadLib: UIViewController {
    
    var wordOne: String = ""
    var wordTwo: String = ""
    
    @IBOutlet var storyWordOne: UITextField!
    @IBOutlet var storyWordTwo: UITextField!
    
    @IBAction func saveWords(_ sender: AnyObject) {
        
        if let input = storyWordOne.text, input.characters.count > 0 {
            wordOne = input
        } else {
            print("You Naughty Person")
        }
        print("Enter a word here \(self.wordOne)")
        
        
        
        if let input = storyWordTwo.text, input.characters.count > 0 {
            wordTwo = input
        } else {
            print("You're a double naughty")
        }
        print("Not sure about this \(self.wordTwo)")
     
        hereIsYourStory.text = "Today was a day of \(wordOne) which all will remember because of the actions of the individaul who was \(wordTwo)"
    }
    
    @IBOutlet var hereIsYourStory:UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
