//
//  NavigationBarView.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/5.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
            ZStack {
                VStack{
//                    VStack{
//                        Color(red: 1.0, green: 228.0/255.0, blue: 20.0/255)
//                        }
//                        .frame(height: 10)
//                        .edgesIgnoringSafeArea(.top)
                    HStack{
                        HStack{
                            Image("ic_search")
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0))
                            Text("搜索")
                            .font(Font.system(size: 14))
                                .foregroundColor(Color.gray)
                            Spacer()
                            }
                            .background(
                                Color.white
                                .cornerRadius(5)
                            )
                            .frame(height: 45)
//                        Image("scan_icon")
//                        .padding(.leading, 20)
//                        .padding(.trailing, 10)
                    }
                    .padding(.horizontal,15)
                    .background(Color.gray)
//                    .background(Color(red: 1.0, green: 228.0/255.0, blue: 20.0/255))
//                    .padding(.top, -45)
                }
            }
        }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
