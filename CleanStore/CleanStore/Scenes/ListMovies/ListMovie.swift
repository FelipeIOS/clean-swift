//
//  Listmovie.swift
//  CleanStore
//
//  Created by Felipe Miranda on 10/01/20.
//  Copyright © 2020 Felipe Miranda. All rights reserved.
//

import Foundation

typealias Movie = [MovieElement]

struct MovieElement: Codable {
    var title, overview, duration, releaseYear: String?
    var coverURL: String?
    var backdropsURL: [String]?
    var id: String?

    enum CodingKeys: String, CodingKey {
        case title, overview, duration
        case releaseYear = "release_year"
        case coverURL = "cover_url"
        case backdropsURL = "backdrops_url"
        case id
    }
}
