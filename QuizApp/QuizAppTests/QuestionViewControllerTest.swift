//
//  QuestionViewControllerTest.swift
//  QuizAppTests
//
//  Created by Can Babaoğlu on 9.12.2022.
//

import XCTest
@testable import QuizApp

final class QuestionViewControllerTest: XCTestCase {

    func test_viewDidLoad_rendersQuestionHeaderText() {
        let sut = QuestionViewController(question: "Q1")
        
        _ = sut.view
        
        XCTAssertEqual(sut.headerLabel.text!, "Q1")
    }
    
    func test_viewDidLoad_withNoOptions_rendersZeroOptions() {
        let sut = QuestionViewController(question: "Q1", options: [])
        
        _ = sut.view
        
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 0)
    }
    
}
