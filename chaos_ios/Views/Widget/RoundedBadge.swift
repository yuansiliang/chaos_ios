//
//  RoundedBadge.swift
//  MovieSwift
//
//  Created by Thomas Ricouard on 16/06/2019.
//  Copyright © 2019 Thomas Ricouard. All rights reserved.
//

import SwiftUI

struct RoundedBadge : View {
    let text: String
    var body: some View {
        HStack {
            Text(text.capitalized)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding(.horizontal, 10)
                .padding([.top, .bottom], 5)
//            Image(systemName: "chevron.right")
//                .resizable()
//                .frame(width: 5, height: 10)
//                .foregroundColor(.primary)
//                .padding(.trailing, 10)
            
            }
            .background(
                Rectangle()
                    .foregroundColor(.steam_gray)
                    .cornerRadius(12)
        )
            .padding(.bottom, 4)
    }
}

#if DEBUG
struct RoundedBadge_Previews : PreviewProvider {
    static var previews: some View {
        RoundedBadge(text: "Test")
    }
}
#endif
