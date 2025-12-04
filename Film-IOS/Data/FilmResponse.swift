//
//  FilmResponse.swift
//  Film-IOS
//
//  Created by Mananas on 4/12/25.
//

import Foundation

struct FilmListResponse: Codable {
    let result: [Film]
    
    enum CodingKeys: String, CodingKey {
        case result = "Search"
    }
}

struct FilmResponse: Codable {
    let film: Film
}

struct Film: Codable {
    let imdbID: String
    let Title: String
    let Year: String
    let Poster: String
    let Plot: String?
    let Runtime: String?
    let Director: String?
    let Genre: String?
    let Country: String?
}
