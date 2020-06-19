//
//  CardListtRow.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/14/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import SwiftUI

struct CardListRow: View {
  var cardlist: CardDetails
  var body: some View {
    VStack(alignment: .leading){
      
      Text(cardlist.name).font(.subheadline).bold()
      HStack{
        AsyncImage(url: cardlist.imageURL, placeholder: Text("Loading ...."))
          .aspectRatio(contentMode: .fit).frame(width: 160, height: 95)
        Text(cardlist.bonus).font(.caption)
      }
      Spacer()
    }
    
  }
}

struct CardListtRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      CardListRow(cardlist: cardDetails[0])
      CardListRow(cardlist: cardDetails[1])
    }
  }
}
