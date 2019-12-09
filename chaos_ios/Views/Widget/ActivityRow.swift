//
//  ActivityRow.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/9.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct ActivityRow: View {
    var content:String
    var imgName:String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(content)
            .font(Font.system(size: 15))
            .lineLimit(2)
            HStack {
                Image(imgName)
            }
        }
    }
}
