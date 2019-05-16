//
//  Application.swift
//  BarandeShow
//
//  Created by Behrad Kazemi on 11/20/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import NetworkPlatform
import IQKeyboardManagerSwift
import Domain
final class Application {
  static let shared = Application()
  
  private let networkUseCaseProvider: NetworkPlatform.UseCaseProvider
  private init() {
    AnalyticProxy.setup()
    self.networkUseCaseProvider = NetworkPlatform.UseCaseProvider()
  }
  
  func configureMainInterface(in window: UIWindow) {
    IQKeyboardManager.shared.enable = true
    let mainNavigationController = MainNavigationController()
    window.rootViewController = mainNavigationController
    window.makeKeyAndVisible()
    
    SplashNavigator(navigationController: mainNavigationController, services: networkUseCaseProvider).setup()
  }

}

