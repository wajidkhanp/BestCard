//
//  Category.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/19/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import Foundation

public final class Category {
  
  public static let AMERICAN_EXPRESS = "American Express"
  public static let CHASE = "Chase Bank"
  public static let CITI  = "Citi Bank"
  public static let BOA = "Bank of America"
  public static let CAPITALONE = "CapitalOne"
  public static let USBANK = "US Bank"
  public static let WELLSFORGO = "Wellls Forgo"
  
  public static let TOP_PICK = "Top Pick"
  public static let TRAVEL = "Travel"
  public static let BALANCE_TRANSFER = "0% Balance Transfer"
  public static let CASH_BACK = "Cash Back"
  public static let REWARDS = "Rewards"
  
  public static let categories = ["AMERICAN_EXPRESS":  AMERICAN_EXPRESS,
                                  "CHASE": CHASE,
                                  "CITI": CITI,
                                  "BOA": BOA,
                                  "CAPITALONE": CAPITALONE,
                                  "USBANK": USBANK,
                                  "WELLSFORGO": WELLSFORGO,
                                  "TOP_PICK" : TOP_PICK,
                                  "TRAVEL" :  TRAVEL,
                                  "BALANCE_TRANSFER" : BALANCE_TRANSFER,
                                  "CASH_BACK": CASH_BACK,
                                  "REWARDS" : REWARDS
                                ]
  
  public static let cardCompanyNames = [AMERICAN_EXPRESS, CHASE, CITI, BOA, CAPITALONE, USBANK, WELLSFORGO]
  public static let cardCategory = [TOP_PICK, TRAVEL, BALANCE_TRANSFER, CASH_BACK, REWARDS ]
  
}
