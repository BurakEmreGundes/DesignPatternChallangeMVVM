//
//  Decoders.swift
//  CNetwork
//
//  Created by Burak Emre gündeş on 28.07.2023.
//

import Foundation


public enum Decoders {

    static let plainDateDecoder : JSONDecoder = {
       let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }()
    
}
