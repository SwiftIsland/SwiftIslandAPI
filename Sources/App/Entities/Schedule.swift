//
//  Schedule.swift
//  App
//
//  Created by Paul Peelen on 2019-06-09.
//

import Vapor

struct Schedule: Content {

  let date: Date
  let title: String
  let activities: [Activity]

  struct Activity: Codable {
    let id: String
    let title: String
    let description: String
    let datefrom: Date
    let dateto: Date
    let area: String
    let mentor: Int?
  }
}
