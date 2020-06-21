//
//  CardListtRow.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/14/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import SwiftUI

struct HorizonalCardListCell: View {
  var cardlist: CardDetails
  var body: some View {
    VStack(alignment: .leading){
      VStack{
        AsyncImage(url: cardlist.imageURL, placeholder: Text("Loading ...."))
          .aspectRatio(contentMode: .fit).frame(width: 160, height: 95)
        Text(cardlist.name).font(.caption).frame(width: 140, height: 30)
      }
      Spacer()
    }
    
  }
}

struct HorizonalCardListCell_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      HorizonalCardListCell(cardlist: cardDetails[0])
      HorizonalCardListCell(cardlist: cardDetails[1])
    }
  }
}
