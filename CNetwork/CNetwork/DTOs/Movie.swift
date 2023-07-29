//
//  Movie.swift
//  CNetwork
//
//  Created by Burak Emre gündeş on 28.07.2023.
//

import Foundation

public struct Movie : Decodable {
    
    enum CodingKeys : String, CodingKey {
        case artistName
        case releaseDate
        case name
        case copyright
        case image = "artworkUrl100"
        case genres
    }
    
   public let artistName : String
    let releaseDate : Date
   public  let name : String
    let copyright : String?
    let image : URL
    let genres : [Genre]

}

public struct Genre : Decodable {
    let name : String
}
