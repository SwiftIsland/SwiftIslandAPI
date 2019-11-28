//
//  Endpoints.swift
//  Coins
//
//  Created by Sidney de Koning on 10/09/2017.
//  Copyright © 2017 Sidney de Koning. All rights reserved.
//

import Foundation

public enum Endpoint {
    case getBase
    case tickets(String)
}

protocol Path {
    var path: String { get }
}

extension Endpoint: Path {
    
    var path: String {
        
        switch self {
        case .getBase:
            return "/"
        case .tickets(let reference):
            return "tickets?search[q]=\(reference)"
		
        }
    }
}
