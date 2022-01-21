//
//  FirestoreManager.swift
//  PivotControlCenterApp
//
//  Created by Ingel Agro on 18.1.22..
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

final class FirebaseManager {
    static let shared = FirebaseManager()
    
    private let firestore = Firestore.firestore()
    
    private init() { }
    
    public func addUserToFirestore(
        user: UserInfo,
        completion: @escaping (Result<Bool,Error>) -> Void) {
            self.firestore.collection(K.FStore.Users.usersCollectionName)
                .addDocument(data: [
                    K.FStore.Users.email: user.email,
                    K.FStore.Users.country: user.country
                ]) { error in
                    guard error == nil else {
                        completion(.failure(error!))
                        return
                    }
                    completion(.success(true))
                }
    }
    
    
}
