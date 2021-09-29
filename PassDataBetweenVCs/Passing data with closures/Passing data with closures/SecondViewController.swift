//
//  SecondViewController.swift
//  Closures&Delegation
//
//  Created by Diana on 10.09.2021.
//

import UIKit

class SecondViewController: UIViewController {
    private let blueText = "Blue"
    private let redText = "Red"
    
    var completion: ((String) -> ())?
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    
    @IBAction func blueTapped(_ sender: Any) {
        completion?(blueText)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func redTapped(_ sender: Any) {
        completion?(redText)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup(button: blueButton)
        setup(button: redButton)
        
    }
    
    func setup(button: UIButton) {
        button.layer.cornerRadius = 30
        button.layer.borderWidth = 10
        button.layer.borderColor = UIColor.clear.cgColor
    }
}
