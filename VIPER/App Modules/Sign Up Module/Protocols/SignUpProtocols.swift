//
//  SignUpProtocols.swift
//  VIPER
//
//  Created by Sergei Romanchuk on 30.06.2021.
//

import Foundation
import UIKit

// MARK: - User Protocol
protocol UserProtocol {
    var id: String? { get }
    var firstName: String? { get set }
    var lastName: String? { get set }
    var middleName: String? { get set }
    var birthday: Date? { get set }
    var age: Int? { get }
}

// MARK: - View To Presenter Sign Up Protocol
protocol ViewToPresenterSignUpProtocol {
    var view: PresenterToViewSignUpProtocol? { get set }
    var interactor: PresenterToInteractorSignUpProtocol? { get set }
    var router: PresenterToRouterSignUpProtocol? { get set }
    func userSignUpRequest()
    func userForgotPassword()
    func userAlreadyHaveAnAccount()
    func showAnotherController(navigationController: UINavigationController)
}

// MARK: - Presenter To View Sign Up Protocol
protocol PresenterToViewSignUpProtocol {
    func onUserSignUpResponseSuccess(for user: UserModel)
    func onUserSignUpResponseFailed(error: String)
}

// MARK: - Presenter To Router Sign Up Protocol
protocol PresenterToRouterSignUpProtocol {
    static func createModule() -> SignUpViewController
    static var mainstoryboard: UIStoryboard { get }
    func pushToAnotherScreen(navigationController: UINavigationController)
}

// MARK: - Presenter To Interactor Sign Up Protocol
protocol PresenterToInteractorSignUpProtocol {
    var presenter: InteractorToPresenterSignUpProtocol? { get set }
    func signUpRequest()
}

// MARK: - Interactor To Presenter Sign Up Protocol
protocol InteractorToPresenterSignUpProtocol {
    func userSignUpRequestSuccess(for user: UserModel)
    func userSignUpRequestFailed()
}
