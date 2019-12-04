//
//  ContentView.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/4.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MWTabView([Text("233")], titles: ["首页","动态","消息","我的"],
                  images: ["tab_home_normal",
                            "tab_share_normal",
                            "tab_message_normal",
                            "tab_profile_normal"],
                  imageSels: ["tab_home_selected",
                              "tab_share_selected",
                              "tab_message_selected",
                              "tab_profile_selected"])
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
