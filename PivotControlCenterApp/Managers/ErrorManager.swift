//
//  ErrorManager.swift
//  PivotControlCenterApp
//
//  Created by Ingel Agro on 19.1.22..
//

import Foundation
import UIKit

final class ErrorManager {
    static let shared = ErrorManager()
    
    private init() { }
    
    public func errorAlert(_ error: Error) -> UIAlertController {
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        return alert
    }
    
    public func emptyFieldErrorAlert() -> UIAlertController {
        let alert = UIAlertController(title: "Error", message: "All fields must be filled", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        return alert
    }
    
}
