//
//  ResultsViewController.swift
//  QuizApp
//
//  Created by Can Babaoğlu on 11.12.2022.
//

import UIKit

struct PresentableAnswer {
    let question: String
    let answer: String
    let wrongAnswer: String?
}

class ResultsViewController: UIViewController, UITableViewDataSource {

    public lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize: 15.0)
        return label
    }()
    
    public lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .red
        tableView.allowsMultipleSelection = true
        return tableView
    }()
    
    private var summary = ""
    private var answers = [PresentableAnswer]()
    
    convenience init(summary: String, answers: [PresentableAnswer]) {
        self.init()
        self.summary = summary
        self.answers = answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerLabel.text = summary
        view.backgroundColor = UIColor.red
        tableView.dataSource = self
        tableView.register(CorrectAnswerCell.self)
        tableView.register(WrongAnswerCell.self)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let answer = answers[indexPath.row]
        if answer.wrongAnswer == nil {
            return correctAnswerCell(for: answer)
        }
        return wrongAnswerCell(for: answer)
    }
    
    private func correctAnswerCell(for answer: PresentableAnswer) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: CorrectAnswerCell.self)!
        cell.questionLabel.text = answer.question
        cell.answerLabel.text = answer.answer
        return cell
    }
    
    private func wrongAnswerCell(for answer: PresentableAnswer) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: WrongAnswerCell.self)!
        cell.questionLabel.text = answer.question
        cell.answerLabel.text = answer.answer
        cell.wrongAnswerLabel.text = answer.wrongAnswer
        return cell
    }
}
