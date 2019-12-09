//
//  CircleText.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/8.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct CircleText: View {
    var title:String
        var body: some View {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
            .background(
            Circle()
                .foregroundColor(.steam_gray))
        }
}

struct CircleText_Preview: PreviewProvider {
    static var previews: some View {
        CircleText(title:"A")
    }
}
