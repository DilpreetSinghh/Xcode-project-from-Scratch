//
//  TrendingResults.swift
//  Movie Finder
//
//  Created by dilpreet singh on 13/03/23.
//

import Foundation

struct TrendingResults: Decodable {
    let page: Int
    let results: [Movie]
    let total_pages: Int
    let total_results: Int
}

