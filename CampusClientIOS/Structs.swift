//
//  PersonClass.swift
//  CampusClientIOS
//
//  Created by mac on 1/11/19.
//  Copyright © 2019 SINED. All rights reserved.
//

import Foundation

struct PersonToVote: Codable {
    var id: String?
    var lecturer: String?
}

struct Criterion: Codable {
    var id: String?
    var name: String?
}
