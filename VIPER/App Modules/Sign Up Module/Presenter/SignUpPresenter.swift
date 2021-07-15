//
//  SignUpPresenter.swift
//  VIPER
//
//  Created by Sergei Romanchuk on 30.06.2021.
//

import Foundation
import UIKit

// MARK: - Sign Up Presenter
class SignUpPresenter: ViewToPresenterSignUpProtocol {
    var view: PresenterToViewSignUpProtocol?
    
    var interactor: PresenterToInteractorSignUpProtocol?
    
    var router: PresenterToRouterSignUpProtocol?
    
    func userSignUpRequest() {
        interactor?.signUpRequest()
    }
    
    func userForgotPassword() {
        //interactor?.forgotPassword()
    }
    
    func userAlreadyHaveAnAccount() {
        //interactor?.alreadyHaveAnAccount()
    }
    
    func showAnotherController(navigationController: UINavigationController) {
        router?.pushToAnotherScreen(navigationController: navigationController)
    }
}

// MARK: - Extension Sign Up Presenter For Interactor To Presenter Sign Up Protocol
extension SignUpPresenter: InteractorToPresenterSignUpProtocol {
    func userSignUpRequestSuccess(for user: UserModel) {
        view?.onUserSignUpResponseSuccess(for: user)
    }
    
    func userSignUpRequestFailed() {
        view?.onUserSignUpResponseFailed(error: K.API.Error.errorUserSignUp.rawValue)
    }
}
