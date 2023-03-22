//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
public protocol Mapper {
    associatedtype Response
    associatedtype Entity
    associatedtype Domain
    associatedtype Request
    
    func transformResponseToEntity(response: Response) -> Entity
    func transformEntityToDomain(entity: Entity) -> Domain
    func transformResponseToDomain(response: Response) -> Domain
    func transformerWithRequestResponseToDomains(request: Request, response: Response) -> Domain
    func transformDomainToEntity(domain: Domain) -> Entity
}
