//
//  ViewController.swift
//  SimpleUIKit
//
//  Created by bibiga on 1/14/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    @IBAction func didTabButton(_ sender: Any) {
        if let name = nameTextField.text {
            helloLabel.text = "Hello \(name)!"
        }
    }
}
