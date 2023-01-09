//
//  CorrectAnswerTableViewCell.swift
//  QuizApp
//
//  Created by Can Babaoğlu on 9.01.2023.
//

import UIKit

class CorrectAnswerCell: UITableViewCell {
    public lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize: 14.0)
        return label
    }()
    
    public lazy var answerLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.green
        label.font = .systemFont(ofSize: 13.0)
        return label
    }()
}
