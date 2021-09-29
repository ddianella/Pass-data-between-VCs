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
    
    weak var delegate: vcDelegate?
    
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    
    @IBAction func blueTapped(_ sender: Any) {
        delegate?.update(label: blueText)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func redTapped(_ sender: Any) {
        delegate?.update(label: redText)
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
