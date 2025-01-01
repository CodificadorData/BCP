//
//  CoordinatorProtocol.swift
//  ExampleBanner
//
//  Created by Christian Morante on 1/01/25.
//
import UIKit

protocol CoordinatorProtocol {
    
    var viewController: UIViewController? { get }
    var navigationController: UINavigationController? { get }
    
    func start()
}

extension CoordinatorProtocol {
    var viewController: UIViewController? { nil }
    var navigationController: UINavigationController? { nil }
}
