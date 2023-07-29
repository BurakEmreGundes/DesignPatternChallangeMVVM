//
//  MovieListContracts.swift
//  DPCMVVM
//
//  Created by Burak Emre gündeş on 29.07.2023.
//

import Foundation


protocol MovieListViewModelProtocol {
    var delegate : MovieListViewModelDelegate? {get set}
    func load()
    func selectMovie(at index : Int)
}


enum MovieListViewModelOutput {
    case updateTitle(String)
    case setLoading(Bool)
    case showMovieList([MoviePresentation])
}


protocol MovieListViewModelDelegate : AnyObject {
    func handleViewModelOutput(_ output : MovieListViewModelOutput)
}
