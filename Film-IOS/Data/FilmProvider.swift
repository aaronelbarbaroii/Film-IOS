//
//  FilmProvider.swift
//  Film-IOS
//
//  Created by Mananas on 4/12/25.
//

import Foundation

class FilmProvider {
    
    //https://www.omdbapi.com/?apikey=ffbd5ec5&s=matrix
    
    static let BASE_URL     = "https://www.omdbapi.com/"
    static let APIKEY = "ffbd5ec5"
    
    static func findFilmsByName(query: String) async -> [Film] {
        guard let url = URL(string: "\(BASE_URL)?apikey=\(APIKEY)&s=\(query)") else {
            return []
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            return try JSONDecoder().decode(FilmListResponse.self, from: data).result
        } catch {
            debugPrint(error)
            return []
        }
    }
    
    // https://www.omdbapi.com/?apikey=ffbd5ec5&i=tt0133093
    
    static func findFilmsById(query: String) async -> Film? {
        guard let url = URL(string: "\(BASE_URL)?apikey=\(APIKEY)&i=\(query)") else {
            return nil
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            return try JSONDecoder().decode(Film.self, from: data)
        } catch {
            debugPrint(error)
            return nil
            
        }
     
    }
    
     
}


