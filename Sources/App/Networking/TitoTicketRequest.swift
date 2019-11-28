//
//  ExchangeRequest.swift
//  Coins
//
//  Created by Sidney de Koning on 23/11/2017.
//  Copyright © 2017 Sidney de Koning. All rights reserved.
//

import Foundation

struct SearchQuery {
    let reference: String
}

struct TitoTicketRequest: API {
    
    var query: SearchQuery
    
    typealias DecodableType = TitoTickets
    
    init(query: SearchQuery) {
        self.query = query
    }
    var host: URL? {
        return URL(string: "https://api.tito.io/v3/swiftisland/2019/")
    }
    
    var endPoint: Endpoint {
        return .tickets(self.query.reference)
    }
    
    var method: HTTPMethod {
        return .get
    }

	var headers: [String : String]? {
        let token: String = ProcessInfo.processInfo.environment["TITO_TOKEN"] ?? "FAIL"
        return ["Accept" : "application/json", "Authorization" : "Token token=\(token)"]
	}

    var showDebug: Bool {
        return false
    }
}
