//
//  OrderInfo.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/30.
//

import Foundation

struct Response: Codable {
    var results: [Result]
}

class Result: Codable, ObservableObject {
    static func == (lhs: Result, rhs: Result) -> Bool {
        return true
    }
    
    var trackId: Int
    var trackName: String
    var collectionName: String
}

