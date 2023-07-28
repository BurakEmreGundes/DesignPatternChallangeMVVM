//
//  TopMoviesService.swift
//  CNetwork
//
//  Created by Burak Emre gündeş on 28.07.2023.
//

import Foundation
import Alamofire


public protocol TopMoviesServiceProtocol {
    func fetchTopMovies(completion : @escaping (Result<TopMoviesResponse, Error>) -> ())
}


public class TopMovieService : TopMoviesServiceProtocol {
    
    public enum CustomError : Error {
        case serializationError(internal : Error)
        case networkError(internal : Error)
    }
    
    public init(){}
    
    public func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse, Error>) -> ()) {
        AF.request(CNetworkConstants.baseURL).responseData { response in
            
            switch response.result {
            case .success(let data):
                let decoder = Decoders.plainDateDecoder
                do{
                    let response = try decoder.decode(TopMoviesResponse.self, from: data)
                    completion(.success(response))
                }catch{
                    completion(.failure(CustomError.serializationError(internal: error)))
                }
                
            case .failure(let error):
                completion(.failure(CustomError.networkError(internal: error)))
            
            }
        }
    }
    
}
