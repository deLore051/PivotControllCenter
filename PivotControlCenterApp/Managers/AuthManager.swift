//
//  AuthManager.swift
//  PivotControlCenterApp
//
//  Created by Ingel Agro on 18.1.22..
//

import Foundation
import FirebaseAuth

final class AuthManager {
    static let shared = AuthManager()
    
    private let auth = Auth.auth()
    
    private init() { }
    
    /// Method for user sign in
    public func signIn(email: String, password: String, completion: @escaping (Result<Bool, Error>) -> Void) {
        self.auth.signIn(withEmail: email, password: password) { authResult, error in
            guard error == nil else {
                completion(.failure(error!))
                return
            }
            completion(.success(true))
        }
    }
    
    /// Method for user sign up
    public func signUp(email: String, password: String, completion: @escaping (Result<Bool, Error>) -> Void) {
        self.auth.createUser(withEmail: email, password: password) { authResult, error in
            guard error == nil else {
                completion(.failure(error!))
                return
            }
            completion(.success(true))
        }
    }
    
    /// Method for user sign out
    public func signOut(completion: @escaping (Bool) -> Void) {
        do {
            try self.auth.signOut()
            completion(true)
        } catch {
            completion(false)
            return
        }
    }
}
