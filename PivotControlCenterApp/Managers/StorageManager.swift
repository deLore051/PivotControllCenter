//
//  StorageManager.swift
//  PivotControlCenterApp
//
//  Created by Ingel Agro on 18.1.22..
//

import Foundation
import FirebaseStorage

final class StorageManager {
    static let shared = StorageManager()
    
    private let storage = Storage.storage()
    
    private init() { }
}
