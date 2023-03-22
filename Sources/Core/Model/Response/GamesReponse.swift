//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
public struct GamesResponses: Codable {
    public let results: [GameResponse]?
}

public struct GameResponse: Codable {
    public let id: Int?
    public let slug: String?
    public let name: String?
    public let released: String?
    public let tba: Bool?
    public let backgroundImage: String?
    public let rating: Double?
    public let ratingTop: Int?
    public let genres: [AdditionDataResponse]?
    enum CodingKeys: String, CodingKey {
        case id
        case slug
        case name
        case released
        case tba
        case backgroundImage = "background_image"
        case rating
        case ratingTop = "rating_top"
        case genres
    }
}

