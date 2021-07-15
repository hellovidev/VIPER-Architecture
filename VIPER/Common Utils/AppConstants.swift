//
//  AppConstants.swift
//  VIPER
//
//  Created by Sergei Romanchuk on 30.06.2021.
//

import Foundation

// MARK: - K (Constants)
enum K {
    
    // MARK: - Storyboards Identifiers
    enum Storyboards: String {
        case main = "Main"
    }
    
    // MARK: - View Controllers Identifiers
    enum ViewControllers: String {
        case signup = "SignUpViewController"
    }
    
    // MARK: - Screen
    enum Screen {
        
        // MARK: - Screen Title
        enum Title: String {
            case signUp = "Sign Up Module"
        }
    }
    
    // MARK: - API
    enum API {
        
        // MARK: - API Error
        enum Error: String {
            case errorUserSignUp = "Some Error Message From API Response"
        }
    }
    
    enum ProgressIndicator: String {
        case waiting = "Please wait.."
        
        enum Tag: Int {
            case viewTag = 10
        }
    }
    
    // MARK: - Alert
    enum Alert {
        
        // MARK: - Alert Title
        enum Title: String {
            case problem = "Problem"
        }
        
        // MARK: - Alert Message
        enum Message: String {
            case userSignUpProblem = "Problem Sign Up User"
        }

        // MARK: - Alert Button
        enum Button: String {
            case okay = "Okay"
            case nope = "Nope"
            case cancel = "Cancel"
        }
    }
}
