//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
public struct GameDomainModel: Equatable, Identifiable {
    public let id: Int
    public let slug: String
    public let name: String
    public let released: String
    public let tba: Bool
    public let backgroundImage: String
    public let rating: Double
    public let ratingTop: Int
    public let genres: [AdditionDomainDataModel]
    public let gameDesc: String
    public let isFavorite: Bool
    public let tags: [AdditionDomainDataModel]
    
    public init(id: Int, slug: String, name: String, released: String, tba: Bool, backgroundImage: String, rating: Double, ratingTop: Int, genres: [AdditionDomainDataModel], gameDesc: String, isFavorite: Bool, tags: [AdditionDomainDataModel]) {
        self.id = id
        self.slug = slug
        self.name = name
        self.released = released
        self.tba = tba
        self.backgroundImage = backgroundImage
        self.rating = rating
        self.ratingTop = ratingTop
        self.genres = genres
        self.gameDesc = gameDesc
        self.isFavorite = isFavorite
        self.tags = tags
    }
}

public struct AdditionDomainDataModel: Equatable, Identifiable  {
    public let id: Int
    public let name: String
    public let slug: String
    public let gamesCount: Int
    public let imageBackground: String
    
    public init(id: Int, name: String, slug: String, gamesCount: Int, imageBackground: String) {
        self.id = id
        self.name = name
        self.slug = slug
        self.gamesCount = gamesCount
        self.imageBackground = imageBackground
    }
}

