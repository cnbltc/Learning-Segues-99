//
//  ViewControllerSecond.swift
//  Learning-Segues-99
//
//  Created by Can BALTACI on 05.08.23.
//

import UIKit

class ViewControllerSecond: UIViewController {
    
    var labelOneText = "Empty"

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var labelOne: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = labelOneText
    }
    
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        dismiss(animated: true) {
            print("Second VC button one pressed.")
        }
    }
}
