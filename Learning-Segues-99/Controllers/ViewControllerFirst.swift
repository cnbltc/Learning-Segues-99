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
        print("View one loaded.")
        super.viewDidLoad()
        labelOne.text = "First View"
        labelOne.contentMode = UIView.ContentMode.center
        labelOne.textAlignment = NSTextAlignment.center
        buttonOne.titleLabel?.text = "Button for Second View"
        buttonOne.titleLabel?.textAlignment = .center
    }
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        viewDidLoad()
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    @IBAction func buttonTwoPressed(_ sender: UIButton) {
        print("Button two pressed")
        dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            let vc = segue.destination as! ViewControllerSecond
            vc.labelOneText = "From First View"
        }
    }
}
