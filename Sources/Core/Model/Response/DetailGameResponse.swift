//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
public struct DetailGameResponse: Codable {
    public var id: Int?
    public var slug: String?
    public var name: String?
    public var released: String?
    public var tba: Bool?
    public var updated: String?
    public var ratingTop: Int?
    public var backgroundImage: String?
    public var website: String?
    public var rating: Double?
    public var reviewsCount: Int?
    public var genres: [AdditionDataResponse]?
    public var tags: [AdditionDataResponse]?
    public var publishers: [AdditionDataResponse]?
    public var descriptionRaw: String?

    public init() {}
    
    enum CodingKeys: String, CodingKey {
        case id
        case slug
        case name
        case released
        case tba
        case ratingTop = "rating_top"
        case updated
        case backgroundImage = "background_image"
        case website
        case rating
        case reviewsCount = "reviews_count"
        case genres, tags, publishers
        case descriptionRaw = "description_raw"
    }
}
