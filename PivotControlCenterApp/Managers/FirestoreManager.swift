//
//  FirestoreManager.swift
//  PivotControlCenterApp
//
//  Created by Ingel Agro on 18.1.22..
//

import Foundation
import FirebaseFirestore

final class FirebaseManager {
    static let shared = FirebaseManager()
    
    private let firestore = Firestore.firestore()
    
    private init() { }
    
    
}
