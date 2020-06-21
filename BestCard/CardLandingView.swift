//
//  CardLandingView.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/15/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import SwiftUI

struct CardLandingView: View {
  
  let allCardList = cardDetails
  
  var body: some View {
    NavigationView{
      VStack(alignment: .leading, spacing: 20){
        
        Text("Choose Issuing Bank").bold().font(.title)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack {
            ForEach(0..<Category.cardCompanyNames.count) { i in
              NavigationLink(destination: ContentView(cardCategoryName: "\(Category.cardCompanyNames[i])")){
                Text("\(Category.cardCompanyNames[i])")
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
            ForEach(0..<Category.cardCategory.count) { i in
              NavigationLink(destination: ContentView(cardCategoryName: "\(Category.cardCategory[i])")){
                Text("\(Category.cardCategory[i])")
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
