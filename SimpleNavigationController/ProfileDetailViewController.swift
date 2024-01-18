//
//  ProfileDetailViewController.swift
//  SimpleNavigationController
//
//  Created by bibiga on 1/18/24.
//

import UIKit

class ProfileDetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var inputText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = inputText
    }
}
