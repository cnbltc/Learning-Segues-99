//
//  ViewControllerSecond.swift
//  Learning-Segues-99
//
//  Created by Can BALTACI on 05.08.23.
//

import UIKit

class ViewControllerSecond: UIViewController {
    
    var labelOneText = "First View failed to send the text."

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var labelOne: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = labelOneText
        buttonOne.titleLabel?.text = "Press to go back to View One"
    }
    
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        dismiss(animated: true) {
        }
    }
}
