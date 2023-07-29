//
//  MoviePresentation.swift
//  DPCMVVM
//
//  Created by Burak Emre gündeş on 29.07.2023.
//

import Foundation
import CNetwork


struct MoviePresentation {
    let title : String
    let detail : String
}


extension MoviePresentation {
    init(movie : Movie){
        self.init(title: movie.name, detail: movie.artistName)
    }
}
