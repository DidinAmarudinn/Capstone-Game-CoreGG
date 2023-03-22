//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
import Combine
public class GetDetailPresenter<Request, Response, Interactor: UseCase>: ObservableObject where Interactor.Request == Request, Interactor.Response == Response {
    private var cancellables: Set<AnyCancellable> = []
    
    private let _useCase: Interactor
    
    @Published public var data: Response?
    @Published public var errorMessage: String = ""
    @Published public var isLoading: Bool = false
    @Published public var isError: Bool = false
    
    public init(useCase: Interactor) {
        _useCase = useCase
    }
    
    public func getDetail(request: Request?) {
        isLoading = true
        _useCase.execute(reqest: request)
            .receive(on: RunLoop.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    self.isError = true
                    self.isLoading = false
                case .finished:
                    self.isLoading = false
                }
            } receiveValue: { data in
                self.data = data
            }.store(in: &cancellables)
    }
}
