//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
import Combine
public protocol LocalDataSource {
    associatedtype Request
    associatedtype Response
    
    func list(request: Request?) -> AnyPublisher<[Response], Error>
    func add(entity: Response) -> AnyPublisher<Bool, Error>
    func delete(entity: Response) -> AnyPublisher<Bool, Error>
    func get(id: Int) -> AnyPublisher<Bool, Error>
}
