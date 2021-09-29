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
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func goToSecondVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        secondVC.delegate = self
        secondVC.modalPresentationStyle = .fullScreen
        secondVC.modalTransitionStyle = .crossDissolve
        show(secondVC, sender: nil)
        
        update(label: secondVC.text)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: vcDelegate {
    func update(label text: String) {
        label.isHidden = false
        label.text = text
    }
}
