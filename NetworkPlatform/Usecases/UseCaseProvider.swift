//
//  UseCaseProvider.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 12/26/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//
import Foundation
import Domain

public final class UseCaseProvider: Domain.UseCaseProvider {
    
    private let networkProvider: NetworkProvider

    public init() {
        networkProvider = NetworkProvider()
    }
    
    //MARK: - Get Token + Login
    public func makeAuthorizationUseCase() -> Domain.AuthorizationUseCase {
        return AuthorizationUseCase(network: networkProvider.makeAuthorizationNetwork())
    }
    
    public func makeSetPhoneUseCase() -> Domain.SetPhoneUseCase {
        return SetPhoneUseCase(network: networkProvider.makeSetPhoneNetwork())
    }
    
    public func makeVerifyPhoneUseCase() -> Domain.VerifyPhoneUseCase {
        return VerifyPhoneUseCase(network: networkProvider.makeVerifyPhoneNetwork())
    }
    
    public func makeRegisterUseCase() -> Domain.RegisterUseCase {
        return RegisterUseCase(network: networkProvider.makeRegisterNetwork())
    }
    //MARK: - MoreInfo
    
    public func makeMenuUseCase() -> Domain.MenuUseCase{
        return MenuUseCase(network: networkProvider.makeMenuNetwork())
    }
    
    public func makeGetProfileUseCase() -> Domain.ProfileUseCase {
        return ProfileUseCase(network: networkProvider.makeGetProfileNetwork())
    }
    
    public func makeGetStateCityUseCase() ->Domain.StateCityUseCase{
        return StateCityUseCase(network: networkProvider.makeGetStateCityNetwork())
    }
    
    public func makeCreditUseCase() -> Domain.CreditUseCase {
        return CreditUseCase(network: networkProvider.makeCreditNetwork())
    }
    
    public func makeRankingUseCase() -> Domain.RankingUseCase {
        return RankingUseCase(network: networkProvider.makeRankingNetwork())
    }
    
    public func makeTicketsUseCase() -> Domain.TicketsUseCase {
        return TicketsUseCase(network: networkProvider.makeTicketsNetwork())
    }
    
    public func makeMessagesUseCase() -> Domain.MessagesUseCase {
        return MessagesUseCase(network: networkProvider.makeMessagesNetwork())
    }
    
    public func makeSupportUseCase() -> Domain.SupportUseCase {
        return SupportUseCase(network: networkProvider.makeSupportNetwork())
    }
    
    public func makeAboutusUseCase() -> Domain.AboutusUseCase {
        return AboutusUseCase(network: networkProvider.makeAboutusNetwork())
    }
    
    public func makeLogoutUseCase() -> Domain.LogoutUseCase {
        return LogoutUseCase(network: networkProvider.makeLogoutNetwork())
    }
    
    //MARK: - Quiz Relay
    public func makeQuizBatchUseCase() -> Domain.QuizBatchUseCase {
        return QuizBatchUseCase(network: networkProvider.makeTVShowQuizBatchNetwork())
    }
    
    public func makeQuestionSceneUseCase() -> Domain.QuestionSceneUseCase {
        return QuestionSceneUseCase(network: networkProvider.makeQuestionSceneNetwork(), batchNetwork: networkProvider.makeTVShowQuizBatchNetwork())
    }
    
    public func makeQuizResultUseCase() -> Domain.QuizResultUseCase {
        return QuizResultUseCase(network: networkProvider.makeQuizResultNetwork())
    }
    
    //MARK: - Packages Relay
    public func makePackageLandingUseCase() -> Domain.PackageLandingUseCase {
        return PackageLandingUseCase(network: networkProvider.makePackageLandingNetwork())
    }
    
    public func makeCampaignDetailsUseCase() -> Domain.CampaignDetailsUseCase {
        return CampaignDetailsUseCase(network: networkProvider.makeCampaignDetailsNetwork())
    }

    //MARK: - Extra Relay
    public func makeStaisticsSceneUseCase() -> Domain.StatisticsSceneUseCase {
         return StatisticsSceneUseCase(network: networkProvider.makeStatisticsSceneNetwork())
    }
    
    public func makeLeaderBoardUseCase() -> Domain.LeaderBoardUseCase {
        return LeaderBoardUseCase(network: networkProvider.makeLeaderBoardNetwork())
    }
    
    public func makeVideoNewsUseCase() -> Domain.VideoNewsUseCase {
        return VideoNewsUseCase(network: networkProvider.makeVideoNewsNetwork())
    }
    
    public func makeInviteFriendsUseCase() -> Domain.InviteFriendsUseCase {
        return InviteFriendsUseCase(network: networkProvider.makeInviteFriendsNetwork())
    }
	
	public func makePreferencesUseCase() -> Domain.PreferencesUseCase {
		return PreferencesUseCase(network: networkProvider.makePreferenceNetwork())
	}
    
    //MARK: - Other
    public func makeRecommendedUseCase() -> Domain.RecommendedUseCase {
        return RecommendedUseCase(network: networkProvider.makeRecommendedNetwork())
    }
}
