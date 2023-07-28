//
//  ViewController.swift
//  DPCMVVM
//
//  Created by Burak Emre gündeş on 28.07.2023.
//

import UIKit
import CNetwork

class ViewController: UIViewController {
    
    let service : TopMoviesServiceProtocol = TopMovieService()

    override func viewDidLoad() {
        super.viewDidLoad()
        service.fetchTopMovies { result in
            switch result {
            case .success(let response):
                print(response.results)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
       
    }


}

