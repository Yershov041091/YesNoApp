//
//  ViewController.swift
//  YesNoApp
//
//  Created by Artem Yershov on 08.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var answerLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerButton.layer.cornerRadius = 6
    }

    @IBAction func answerButtonAction(_ sender: Any) {
        let unswer = Bool.random()
        answerLable.text = ""
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLable.text = unswer ? "YES" : "NO"
        }
    }
}

