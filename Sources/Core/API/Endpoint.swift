//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
public struct APICore {
    static let baseUrl = "https://api.rawg.io/api/"
    static let apiKey = "4fea87291bcd4a5fbc978dcc3d1453f8"
}

public protocol EndpointCore {
    var url: String { get }
}

public enum Endpoints {
    public enum Gets: EndpointCore {
        case listGames
        case detailGame(id: Int)
        public var url: String {
            switch self {
            case .listGames:
                return "\(APICore.baseUrl)games?key=\(APICore.apiKey)"
            case .detailGame(let id):
                return "\(APICore.baseUrl)games/\(id)?key=\(APICore.apiKey)"            }
        }
    }
    
}
