//
//  SignUpInteractor.swift
//  VIPER
//
//  Created by Sergei Romanchuk on 30.06.2021.
//

import Foundation

class SignUpInteractor: PresenterToInteractorSignUpProtocol {
    var presenter: InteractorToPresenterSignUpProtocol?
    
    func signUpRequest() {
        let responseStatusCode = Int.random(in: 195...205)
        
        if responseStatusCode >= 200 {
            let userModel = UserModel()
            userModel.firstName = "Sergei"
            userModel.lastName = "Romanof"
            userModel.middleName = "Alexandr"
            userModel.birthday = Date(timeIntervalSince1970: 900664500)
            self.presenter?.userSignUpRequestSuccess(for: userModel)
        } else {
            self.presenter?.userSignUpRequestFailed()
        }
    }
}
