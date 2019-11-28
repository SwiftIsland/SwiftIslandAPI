//
//  TitoTicket.swift
//  App
//
//  Created by Sidney de Koning on 28/11/2019.
//

import Foundation

struct TitoTickets: Decodable {
    let tickets: [TitoTicket]
}

struct TitoTicket: Decodable {
    let slug: String
    let name: String
    let email: String
    let avatar_url: String
}
