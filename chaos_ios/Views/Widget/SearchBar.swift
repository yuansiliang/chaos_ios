//
//  SearchBar.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/6.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            Image("ic_search")
                .imageScale(.large)
            Text("搜索")
            Spacer()
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
