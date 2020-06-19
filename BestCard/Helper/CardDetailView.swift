//
//  CardDetailView.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/14/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import SwiftUI

struct CardDetailView: View {
  var cardData: CardDetails
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack{
        AsyncImage(url: cardData.imageURL, placeholder: Text("Loading ...."))
          .aspectRatio(contentMode: .fill).frame(width: 250, height: 185)
        
        Text(cardData.name).font(.headline).bold().foregroundColor(.blue)
        Text(cardData.annualFee).font(.headline).bold().foregroundColor(.gray)
        
        Text("Welcome Bonus").foregroundColor(.blue).bold().offset(y: 20)
        Text(cardData.bonus).font(.subheadline).offset(y: 25).padding()
        
        Text("Featured Benefits").foregroundColor(.blue).bold().offset(y: 20)
        Group {
          VStack(alignment: .leading, spacing: 15){
            ForEach(0..<cardData.benefits.count){benefit in
              Text("\u{2022} "+"\(self.cardData.benefits[benefit])").font(.footnote)
                .fixedSize(horizontal: false, vertical: true)
            }
          }.padding()
          
        }.offset(y: 25)
        
        if(!cardData.introApr.isEmpty){
          Text("Intro APR").foregroundColor(.blue).bold().offset(y: 30)
          Text(cardData.introApr).font(.subheadline).offset(y: 30).padding()
        }
       // Spacer()
        
        
      }
    }
    
  }
}

struct CardDetailView_Previews: PreviewProvider {
  static var previews: some View {
    CardDetailView(cardData: cardDetails[0])
  }
}
