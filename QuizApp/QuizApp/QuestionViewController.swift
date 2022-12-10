//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Can Babaoğlu on 9.12.2022.
//

import Foundation
import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
    
    private var question = ""
    private var options: [String] = []
    private var selection: ((String) -> Void)? = nil
    
    private let reuseIdentifier = "Cell"
    
    
    convenience init(question: String, options: [String], selection: @escaping (String) -> Void) {
        self.init()
        self.question = question
        self.options = options
        self.selection = selection
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        headerLabel.text = question
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueCell(in: tableView)
        cell.textLabel?.text = options[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selection?(options[indexPath.row])
    }
    
    private func dequeueCell(in tableView: UITableView) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)  {
            return cell
        }
        return UITableViewCell(style: .default, reuseIdentifier: reuseIdentifier)
        
    }
    
}
