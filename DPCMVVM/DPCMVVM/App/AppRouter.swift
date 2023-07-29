//
//  AppRouter.swift
//  DPCMVVM
//
//  Created by Burak Emre gündeş on 28.07.2023.
//

import Foundation
import UIKit

final class AppRouter {

    
    func start(_ window : UIWindow){
        
        let viewController = MovieListViewController()
        window.rootViewController = UINavigationController(rootViewController: viewController)
        window.makeKeyAndVisible()
        
    }
    
    
}
