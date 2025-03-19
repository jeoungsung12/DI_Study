//
//  main3.swift
//  DI_Study
//
//  Created by 정성윤 on 3/19/25.
//

import Foundation
//Testing?? Testable??
//DI DIP Testing Testable XCTest SwiftTesting

//Swift Concurrency
// 협업 프로젝트 + 팀원

protocol NetWorkManagerProvider: AnyObject {
    func callRequest()
}

final class NetworkManager: NetWorkManagerProvider {
    
    func callRequest() {
        //TODO: Alamofire
    }
}

final class MockManager: NetWorkManagerProvider {
    
    func callRequest() {
        //TODO: Alamofire
    }
}

//생성 사용 분리
final class LottoViewModel {
    let manager: NetWorkManagerProvider
    
    init(manager: NetWorkManagerProvider) {
        self.manager = manager
    }
    
    func transform() {
        manager.callRequest()
    }
}


final class LottoViewController {
    
    let viewModel: LottoViewModel
    
    init(viewModel: LottoViewModel) {
        self.viewModel = viewModel
    }
    
}

final class previous {
    
    func makeLottoViewController(status: Bool) -> LottoViewController {
        let network: NetWorkManagerProvider = status ? NetworkManager() : MockManager()
        let viewModel = LottoViewModel(manager: network)
        return LottoViewController(viewModel: viewModel)
    }
    
}


/*
 DI, DIP
 Interface
 Concrete Type
 구현체, 추상체
 의존 관계
 
 */
