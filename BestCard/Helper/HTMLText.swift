//
//  HTMLText.swift
//  BestCard
//
//  Created by Wajid K Patan on 6/20/20.
//  Copyright © 2020 wajidInc. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct HTMLStringView: UIViewRepresentable {
    let html: String

    func makeUIView(context: UIViewRepresentableContext<Self>) -> UILabel {
         let label = UILabel()
         DispatchQueue.main.async {
             let data = Data(self.html.utf8)
          if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
                 label.attributedText = attributedString
             }
         }

         return label
     }

     func updateUIView(_ uiView: UILabel, context: Context) {}
}
