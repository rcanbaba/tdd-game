//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Can Babaoğlu on 9.12.2022.
//

import Foundation
import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource {
    
    public lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = .systemFont(ofSize: 15.0)
        return label
    }()
    
    public lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .red
        return tableView
    }()
    
    private var question: String = ""
    private var options: [String] = []
    
    convenience init(question: String, options: [String]) {
        self.init()
        self.question = question
        self.options = options
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        headerLabel.text = question
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = options[indexPath.row]
        return cell
    }
    
}
