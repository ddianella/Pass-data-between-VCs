//
//  ViewController.swift
//  Closures&Delegation
//
//  Created by Diana on 10.09.2021.
//

import UIKit

protocol vcDelegate: AnyObject {
    func update(label text: String)
}
class ViewController: UIViewController {
    private let toSecondVC = "toSecondVC"
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toSecondVC {
            if let selectVC = segue.destination as? SecondViewController {
                selectVC.delegate = self
            }
        }
    }
}


extension ViewController: vcDelegate {
    func update(label text: String) {
        label.isHidden = false
        label.text = text
    }
}
