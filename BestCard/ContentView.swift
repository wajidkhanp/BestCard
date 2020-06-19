//
//  ContentView.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/14/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  var passedCompanyName: String
  
  init(cardCompanyName: String) {
    passedCompanyName = cardCompanyName
  }
  
  
  var body: some View {
    List(createNewCardlist(allCardList: cardDetails, passCompanyName: passedCompanyName) ) { card in
      NavigationLink(destination: CardDetailView(cardData: card)) {
        CardListRow(cardlist: card)
      }
    }.navigationBarTitle("\(passedCompanyName)")
      .onAppear { UITableView.appearance().separatorStyle = .none }
  }
  
}

func createNewCardlist(allCardList: [CardDetails], passCompanyName: String) -> [CardDetails] {
  let convertCompanyName: String
  switch passCompanyName {
  case "American Express":
    convertCompanyName = "AmEx"
  case "Chase Bank":
    convertCompanyName = "Chase"
  case "Bank of America":
    convertCompanyName = "BoA"
  case "Citi Bank":
    convertCompanyName = "Citi"
  case "Capital One":
    convertCompanyName = "CapitalOne"
  case "US Bank":
    convertCompanyName = "USBank"
  default:
    convertCompanyName = "AmEx"
  }
  
  var newCardlist: [CardDetails] = []
  for card in allCardList {
    if(card.category == convertCompanyName){
      
      newCardlist.append(card)
    }
  }
  return newCardlist
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(cardCompanyName: "Chase")
  }
}
