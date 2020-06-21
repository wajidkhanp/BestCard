//
//  CardDetails.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/14/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import SwiftUI

struct CardDetails: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var bonus: String
  var annualFee: String
  var introApr: String
  var benefits: [String]
  var imageURL: URL
  var category: [String]
  
}
