//
//  SignUpRouter.swift
//  VIPER
//
//  Created by Sergei Romanchuk on 30.06.2021.
//

import Foundation
import UIKit

// MARK: - Sign Up Router
class SignUpRouter: PresenterToRouterSignUpProtocol {    
    static func createModule() -> SignUpViewController {
        // Elements Creation
        let view = SignUpRouter.mainstoryboard.instantiateViewController(identifier: K.ViewControllers.signup.rawValue) as! SignUpViewController
        var presenter: ViewToPresenterSignUpProtocol & InteractorToPresenterSignUpProtocol = SignUpPresenter()
        var interactor: PresenterToInteractorSignUpProtocol = SignUpInteractor()
        let router: PresenterToRouterSignUpProtocol = SignUpRouter()
        
        // Module Initialization
        view.signUpPresenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name: K.Storyboards.main.rawValue, bundle: Bundle.main)
    }
    
    func pushToAnotherScreen(navigationController: UINavigationController) {
        //let anotherModue = AnotherRouter.createAnotherModule()
        //navigationController.pushViewController(anotherModue, animated: true)
    }
}
