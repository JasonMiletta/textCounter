//
//  ViewController.swift
//  Assignment 3
//
//  Created by Jason Michael Miletta on 2/12/15.
//  Copyright (c) 2015 Jason Michael Miletta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var bodyText: UITextView!
    @IBOutlet weak var characterCountLabel: UILabel!
    @IBOutlet weak var wordCountLabel: UILabel!
    @IBOutlet weak var paragraphCountLabel: UILabel!
    @IBOutlet weak var sentencesCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidChange(textView: UITextView) {
        let textString: String = textView.text
        
        let sentenceSplit = textString.characters.split {$0 == "."}.map { String($0) }
        let sentencesCount: String = String(sentenceSplit.count)
        sentencesCountLabel.text = sentencesCount
        
        let wordSplit = textString.characters.split {$0 == " "}.map { String($0) }
        let wordCount: String = String(wordSplit.count)
        wordCountLabel.text = wordCount
        
        let paragraphSplit = textString.characters.split {$0 == "\n"}.map { String($0) }
        let paragraphCount: String = String(paragraphSplit.count)
        paragraphCountLabel.text = paragraphCount
        
        let characterCount: String = String(textString.characters.count)
        characterCountLabel.text = characterCount
        
    }


}

