//
//  ViewController.swift
//  Learning-Segues-99
//
//  Created by Can BALTACI on 05.08.23.
//

import UIKit

class ViewControllerFirst: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = "First View"
        buttonOne.titleLabel?.text = "Press for View Two"
        buttonTwo.titleLabel?.text = "This button does nothing."
    }
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    @IBAction func buttonTwoPressed(_ sender: UIButton) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            let vc = segue.destination as! ViewControllerSecond
            vc.labelOneText = "First View sent this text."
        }
    }
}
