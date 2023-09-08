//
//  Movies.swift
//  Movies
//
//  Created by Baig, Muhammad on 9/8/23.
//  Movies Class for Section 2

import Foundation

class Movies {
    
    // index
    private var index = 0
    
    // dictionary containing actor, movie pairs
    private let movies = [
        // Personally chosen actors and movie pairs
        "Marlon Brando": "The GodFather",
        "Robert De Niro": "The Deer Hunter",
        "Al Pacino": "Heat",
        "Amir Khan": "Three Idiots",
        "Tom Cruise": "Edge of Tomorrow",
        "Leonardo DiCaprio": "Inception",
        "Mathew McConaughey": "Interstellar",
        "Jonah Hill": "21 Jump Street"
    ]
    
    // Section 3
    // nextMovie funciton, some code from Homework 1 pdf
    func nextMovie() -> String {
        index += 1
        let sortedMovies = movies.keys.sorted()
        
        if index == sortedMovies.count {
            index = 0
        }
        
        let title = sortedMovies[index]
        return title
    }
    
    func getMoviesDict() -> Dictionary<String, String> {
        return movies
    }
    

}
