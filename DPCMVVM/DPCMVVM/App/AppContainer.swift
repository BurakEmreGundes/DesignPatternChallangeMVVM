//
//  AppContainer.swift
//  DPCMVVM
//
//  Created by Burak Emre gündeş on 28.07.2023.
//

import Foundation
import CNetwork


let app = AppContainer()

final class AppContainer {
    
    let router = AppRouter()
    let service = TopMovieService()
}
