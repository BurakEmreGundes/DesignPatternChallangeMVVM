//
//  MovieListViewModel.swift
//  DPCMVVM
//
//  Created by Burak Emre gündeş on 29.07.2023.
//

import Foundation
import CNetwork

final class MovieListViewModel : MovieListViewModelProtocol {
    
    weak var delegate: MovieListViewModelDelegate?
    private let service : TopMoviesServiceProtocol?
    
    init(service : TopMoviesServiceProtocol) {
        self.service = service
    }
    
    func load() {
        self.notify(.updateTitle("Movie List"))
        self.notify(.setLoading(true))
        
        service?.fetchTopMovies(completion: { [weak self] result in
            guard let strongSelf = self else {return}
            strongSelf.notify(.setLoading(false))
            switch result {
            case .success(let response):
                strongSelf.notify(.showMovieList(response.results.map({MoviePresentation(movie: $0)})))
            case .failure(let error):
                print(error)
            }
        })
    }
    
    func selectMovie(at index: Int) {
        
    }
    
    private func notify(_ output : MovieListViewModelOutput){
        delegate?.handleViewModelOutput(output)
    }
    
    
}
