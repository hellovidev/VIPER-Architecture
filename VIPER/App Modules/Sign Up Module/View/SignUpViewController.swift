//
//  ViewController.swift
//  VIPER
//
//  Created by Sergei Romanchuk on 30.06.2021.
//

import UIKit

// MARK: - Sign Up View Controller
class SignUpViewController: UIViewController {
    var signUpPresenter: ViewToPresenterSignUpProtocol?
    var user: UserModel = UserModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showProgressIndicator(view: self.view)
        self.title = K.Screen.Title.signUp.rawValue
        signUpPresenter?.userSignUpRequest()
        print(user.firstName ?? "nil")
    }
}

// MARK: - Extension Sign Up View Controller For Presenter To View Sign Up Protocol
extension SignUpViewController: PresenterToViewSignUpProtocol {
    func onUserSignUpResponseSuccess(for user: UserModel) {
        self.user = user
        hideProgressIndicator(view: self.view)
    }
    
    func onUserSignUpResponseFailed(error: String) {
        hideProgressIndicator(view: self.view)
        let alert = UIAlertController(title: K.Alert.Title.problem.rawValue, message: K.Alert.Message.userSignUpProblem.rawValue, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: K.Alert.Button.okay.rawValue, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
