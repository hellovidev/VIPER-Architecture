//
//  UserModel.swift
//  VIPER
//
//  Created by Sergei Romanchuk on 30.06.2021.
//

import Foundation

// MARK: - User Model
class UserModel: Codable, Identifiable, UserProtocol {
    var id: String?
    
    var firstName: String?
    
    var lastName: String?
    
    var middleName: String?
    
    var birthday: Date?
    
    var age: Int? {
        get {
            return self.calculateCurrentAge(for: self.birthday)
        }
    }
    
    init() {
        self.id = UUID().uuidString
    }
    
    private func calculateCurrentAge(for birthday: Date?) -> Int? {
        if let birthday = birthday {
            return Calendar.current.dateComponents([.year], from: birthday, to: Date()).year
        }
        return nil
    }
}
