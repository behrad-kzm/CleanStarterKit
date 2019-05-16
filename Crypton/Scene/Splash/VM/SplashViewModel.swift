//
//  SplashViewModel.swift
//  BarandehShow
//
//  Created by Behrad Kazemi on 12/29/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import NetworkPlatform
import Domain
final class SplashViewModel {
    
    private let navigator: SplashNavigator
    private let useCase: Domain.PreferencesUseCase
    let disposeBag = DisposeBag()
    init( navigator: SplashNavigator, useCase: Domain.PreferencesUseCase) {
        self.navigator = navigator
        self.useCase = useCase
    }
    func popLoginIfNeededOrContinue(handler: @escaping ()->()) {
        //        navigator.toHome()
        
        if AuthorizationInfo.shared.status == .notDetermined {
            //        if false {
            useCase.getLatest().subscribe(onNext: { [unowned self]_ in
                self.navigator.toOnboarding()
            }).disposed(by: disposeBag)
            
        } else {
//            self.navigator.toHome()
            
            _ = useCase.getLatest()
            AuthorizationInfo.shared.getNewToken().subscribe(onNext: { [unowned self, unowned userInfo = UserInfoProvider.shared](success) in
                if success {
                    userInfo.getLatest().asDriverOnErrorJustComplete().do(onCompleted: {
                        self.navigator.toHome()
                    }).drive().disposed(by: self.disposeBag)
                }
                }, onError: { (error) in
                    handler()
            }).disposed(by: disposeBag)
        }
        
    }
    
}
