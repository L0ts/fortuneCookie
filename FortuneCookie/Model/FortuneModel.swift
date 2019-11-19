//
//  FortuneModel.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/16/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

//https://app.quicktype.io/
import Foundation

// MARK: - WelcomeElement
struct Fortune: Codable {
    let message, id: String
}

typealias Fortunes = [Fortune]
