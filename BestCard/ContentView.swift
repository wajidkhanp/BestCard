//
//  ContentView.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/14/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  var passedCategoryName: String
  
  init(cardCategoryName: String) {
    passedCategoryName = cardCategoryName
  }
  
  
  var body: some View {
    List(createNewCardlist(allCardList: cardDetails, passedCategoryName: passedCategoryName) ) { card in
      NavigationLink(destination: CardDetailView(cardData: card)) {
        CardListRow(cardlist: card)
      }
    }.navigationBarTitle("\(passedCategoryName)")
      .onAppear { UITableView.appearance().separatorStyle = .none }
  }
  
}

func createNewCardlist(allCardList: [CardDetails], passedCategoryName: String) -> [CardDetails] {
  var cardCategory : String = ""
  
  if let index = Category.categories.values.firstIndex(of: passedCategoryName) {
    cardCategory = Category.categories.keys[index]
  }
  var newCardlist: [CardDetails] = []
  for card in allCardList {
    if(card.category.contains(cardCategory) ){
      
      newCardlist.append(card)
    }
  }
  return newCardlist
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(cardCategoryName: "Chase")
  }
}
