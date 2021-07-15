//
//  App Utils.swift
//  VIPER
//
//  Created by Sergei Romanchuk on 30.06.2021.
//

import Foundation
import UIKit

// MARK: - Show Progress Indicator
func showProgressIndicator(view: UIView) {
    view.isUserInteractionEnabled = false
    
    // Create and add the view to the screen.
    let progressIndicator = ProgressIndicator(text: K.ProgressIndicator.waiting.rawValue)
    progressIndicator.tag = K.ProgressIndicator.Tag.viewTag.rawValue

    view.addSubview(progressIndicator)
}

// MARK: - Hide progress Indicator
func hideProgressIndicator(view: UIView) {
    if let viewWithTag = view.viewWithTag(K.ProgressIndicator.Tag.viewTag.rawValue) {
        viewWithTag.removeFromSuperview()
    }
    
    view.isUserInteractionEnabled = true
}
