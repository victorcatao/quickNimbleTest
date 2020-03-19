//
//  Movie.swift
//  QuickNimbleTest
//
//  Created by Victor Catão on 18/03/20.
//  Copyright © 2020 Victor Catão. All rights reserved.
//

import Foundation

struct Movie {
    var title: String
    var genre: Genre
    
    func genreString() -> String {
        switch genre {
        case .Action:
            return "Action"
        case .Animation:
            return "Animation"
        default:
            return "None"
        }
    }
}
