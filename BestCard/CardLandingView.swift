//
//  CardLandingView.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/15/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import SwiftUI

struct CardLandingView: View {
  
  let cardCompanyNames = ["America Express","Chase Bank", "Bank of America", "Citi Bank", "Capital One", "US Bank"]
  let cardCategory = ["Top Pick", "Travel", "Balance Transfer", "Cash Back", "Rewards"]
  let allCardList = cardDetails
  
  var body: some View {
    NavigationView{
      VStack(alignment: .leading, spacing: 20){
        
        Text("Choose Issuing Bank").bold().font(.title)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack {
            ForEach(0..<cardCompanyNames.count) { i in
              NavigationLink(destination: ContentView(cardCompanyName: "\(self.cardCompanyNames[i])")){
                Text("\(self.cardCompanyNames[i])")
                  .foregroundColor(.white)
                  .font(.headline)
                  .frame(width: 150, height: 120)
                  .background(Color.green)
                  .cornerRadius(4)
              }
            }
          }
        }
        
        Text("Choose a Category").bold().font(.title)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack {
            ForEach(0..<cardCategory.count) { i in
              NavigationLink(destination: ContentView(cardCompanyName: "\(self.cardCategory[i])")){
                Text("\(self.cardCategory[i])")
                  .foregroundColor(.white)
                  .font(.headline)
                  .frame(width: 150, height: 120)
                  .background(Color.green)
                  .cornerRadius(4)
              }
            }
          }
        }
        
        Text("All Credit Cards").bold().font(.title)
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack {
            ForEach(0..<allCardList.count) { i in
              NavigationLink(destination: CardDetailView(cardData: self.allCardList[i])){
                HorizonalCardListCell(cardlist: self.allCardList[i])
              }.buttonStyle(PlainButtonStyle())
            }
          }
        }
        Spacer()
      }.navigationBarTitle(Text("Explore Best Cards")).padding()
    }
  }
}

struct CardLandingView_Previews: PreviewProvider {
  static var previews: some View {
    CardLandingView()
  }
}
