//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
import Combine
public protocol UseCase {
    associatedtype Request
    associatedtype Response
    
    func execute(reqest: Request?) -> AnyPublisher<Response, Error>
}

