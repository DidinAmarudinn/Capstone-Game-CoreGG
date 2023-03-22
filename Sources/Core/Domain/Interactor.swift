//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
import Combine
public struct Interactor<Request, Response, R: Repository>: UseCase where R.Request == Request, R.Response == Response {
    private let _repository: R
    
    public init(repository: R) {
        self._repository = repository
    }
    
    public func execute(reqest: Request?) -> AnyPublisher<Response, Error> {
        _repository.execute(request: reqest)
    }
}
