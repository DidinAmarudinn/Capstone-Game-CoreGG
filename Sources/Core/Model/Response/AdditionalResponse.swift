//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
public struct AdditionDataResponse: Codable {
    public let id: Int?
    public let name: String?
    public let slug: String?
    public let gamesCount: Int?
    public let imageBackground: String?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.slug = try container.decodeIfPresent(String.self, forKey: .slug)
        self.gamesCount = try container.decodeIfPresent(Int.self, forKey: .gamesCount)
        self.imageBackground = try container.decodeIfPresent(String.self, forKey: .imageBackground)
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case slug
        case gamesCount = "games_count"
        case imageBackground = "image_background"
    }
}
