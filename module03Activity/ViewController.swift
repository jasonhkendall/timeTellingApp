//
//  ViewController.swift
//  module03Activity
//
//  Created by Jason Howard Kendall on 12/2/18.
//  Copyright © 2018 Jason Howard Kendall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    // IBAction function which passes a UIButton press to call the function "getCurrentDateTime()"
    // Calling functions from functions while using actions from the user interface i.e. "buttons"

    @IBAction func pressTime(_ sender: UIButton) {
    getCurrentDateTime()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Function for getting date & time
    // Formatter can be changed to suit specific needs
    func getCurrentDateTime() {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        let str = formatter.string(from: Date())
        label.text = str
    }
}

