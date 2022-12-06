//
//  Flow.swift
//  QuizEngine
//
//  Created by Can Babaoğlu on 6.12.2022.
//

import Foundation

protocol Router {
    func routeTo(question: String)
}

class Flow {
    let router: Router
    let questions: [String]
    
    init(questions: [String], router: Router) {
        self.questions = questions
        self.router = router
    }
    
    func start() {
        if !questions.isEmpty {
            router.routeTo(question: "Q1")
        }
    }
}
