//
//  HomeView.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/4.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Home")
            .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarItems(leading:
                    SearchBar()
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
