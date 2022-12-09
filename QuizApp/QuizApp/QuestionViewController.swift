//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Can Babaoğlu on 9.12.2022.
//

import Foundation
import UIKit

class QuestionViewController: UIViewController {
    
    public lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize: 15.0)
        return label
    }()
    
    private var question: String = ""
    
    convenience init(question: String) {
        self.init()
        self.question = question
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        headerLabel.text = question
        
    }
    
    
}
