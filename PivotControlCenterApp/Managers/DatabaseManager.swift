//
//  DatabaseManager.swift
//  PivotControlCenterApp
//
//  Created by Ingel Agro on 18.1.22..
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    static let shared = DatabaseManager()
    
    private let databaase = Database.database()
    
    private init() { }
}
