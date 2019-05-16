//
//  UseCaseProvider.swift
//  Domain
//
//  Created by Behrad Kazemi on 8/15/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation

public protocol UseCaseProvider {
    
    //MARK: - Get Token + Login
    func makeAuthorizationUseCase() -> AuthorizationUseCase
    func makeSetPhoneUseCase() -> SetPhoneUseCase
    func makeVerifyPhoneUseCase() -> VerifyPhoneUseCase
    func makeRegisterUseCase() -> RegisterUseCase
  
    //MARK: - MoreInfo
    func makeMenuUseCase() -> MenuUseCase
    func makeGetProfileUseCase() -> ProfileUseCase
    func makeGetStateCityUseCase() -> StateCityUseCase
    //func makeGetFAQUseCase() -> SupportUseCase
    func makeCreditUseCase() -> CreditUseCase
    func makeRankingUseCase() -> RankingUseCase
    func makeTicketsUseCase() -> TicketsUseCase
    func makeMessagesUseCase() -> MessagesUseCase
    func makeSupportUseCase() -> SupportUseCase
    func makeAboutusUseCase() ->AboutusUseCase
    func makeLogoutUseCase() -> LogoutUseCase
    
    
    //MARK: - Quiz Relay
    func makeQuizBatchUseCase() -> QuizBatchUseCase
    func makeQuestionSceneUseCase() -> QuestionSceneUseCase
    func makeQuizResultUseCase() -> QuizResultUseCase
    
    //MARK: - Packages Relay
    func makePackageLandingUseCase() -> PackageLandingUseCase
    func makeCampaignDetailsUseCase() -> CampaignDetailsUseCase
    
    //MARK: - Extra
    func makeStaisticsSceneUseCase() -> StatisticsSceneUseCase
    func makeLeaderBoardUseCase() -> LeaderBoardUseCase
    func makeVideoNewsUseCase() -> VideoNewsUseCase
    func makeInviteFriendsUseCase() -> InviteFriendsUseCase
		func makePreferencesUseCase() -> PreferencesUseCase

}
