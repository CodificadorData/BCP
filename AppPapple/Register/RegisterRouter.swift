//
//  RegisterRouter.swift
//  AppPapple
//
//  Created by Christian Morante on 6/01/25.
//
import UIKit

class RegisterRouter {
    
    init() {
    }
    
    func goToLogin(mainView: UIViewController) {
        mainView.navigationController?.popViewController(animated: true)
    }
}
