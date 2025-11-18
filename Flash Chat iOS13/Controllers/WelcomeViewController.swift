//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "⚡️FlashChat"
        //createTypeWriterAnimation()
    }
 
}

extension WelcomeViewController {
    /*
     This function shows label character by character manually
     */
    
    func createTypeWriterAnimation() {
        let title = titleLabel.text
        titleLabel.text = ""
        var newTitle = ""
        var index = 1
        
        title?.forEach { char in
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.3) {
                newTitle += String(char)
                self.titleLabel.text = newTitle
            }
            
            index += 1
        }
    }
}
