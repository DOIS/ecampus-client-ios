//
//  ArchiveDataModel.swift
//  CampusClientIOS
//
//  Created by mac on 3/28/19.
//  Copyright © 2019 SINED. All rights reserved.
//

import Foundation

class ArchiveDataModel {
    
    private let voteRequest = VoteRequest.init(apiClient: ApiClient.shared)
    private let token = UserDefaults.standard.string(forKey: "access_token")
    
    weak var dataDelegate: DataReceiveProtocol?
    
    init() {
        finalResult()
    }
    
    private func finalResult() {
        guard token != nil else { return }
        voteRequest.getAllVotes(token: token) { (voteTerms) in
            for vote in voteTerms {
                self.voteRequest.archiveRequest(termID: vote.id!, completion: { (archiveResult) in
                    self.dataDelegate?.dataReceive(vote: vote, result: archiveResult)
                })
            }
        }
    }
    
    
}
