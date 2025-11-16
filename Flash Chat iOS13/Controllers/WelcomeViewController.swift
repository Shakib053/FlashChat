//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
