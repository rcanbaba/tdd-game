//
//  UITableViewExtensions.swift
//  QuizApp
//
//  Created by Can Babaoğlu on 9.01.2023.
//

import UIKit

extension UITableView {
    
    func register(_ type: UITableViewCell.Type) {
        let className = String(describing: type)
        register(type.self, forCellReuseIdentifier: className)
    }
    
    func dequeueReusableCell<T>(for type: T.Type) -> T? {
        let className = String(describing: type)
        return dequeueReusableCell(withIdentifier: className) as? T
    }
}
