//
//  ShareView.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/4.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct ShareView: View {
    var body: some View {
        VStack {
            NavigationView {
                List{
                    ActivityCell(nickName: "皮卡丘", timeStamp: "2小时前",content: "发明一种新吃法#一人食灌蛋手抓饼夹小油条泡菜香肠，挤上番茄酱甜面酱巨好吃呀😘！！灌蛋是灵魂，不能偷懒！！", imgName: "shopping"
                    )
                    ActivityCell(nickName: "皮卡丘", timeStamp: "2小时前",content: "发明一种新吃法#一人食灌蛋手抓饼夹小油条泡菜香肠，挤上番茄酱甜面酱巨好吃呀😘！！灌蛋是灵魂，不能偷懒！！", imgName: "shopping"
                    )
                    ActivityCell(nickName: "皮卡丘", timeStamp: "2小时前",content: "发明一种新吃法#一人食灌蛋手抓饼夹小油条泡菜香肠，挤上番茄酱甜面酱巨好吃呀😘！！灌蛋是灵魂，不能偷懒！！", imgName: "shopping"
                    )
                    ActivityCell(nickName: "皮卡丘", timeStamp: "2小时前",content: "发明一种新吃法#一人食灌蛋手抓饼夹小油条泡菜香肠，挤上番茄酱甜面酱巨好吃呀😘！！灌蛋是灵魂，不能偷懒！！", imgName: "shopping"
                    )
                }.padding(.horizontal,-15)
                .navigationBarTitle(Text(""), displayMode: .inline)
                .navigationBarItems(leading:
                        SearchBar()
                )
            }
        }
    }
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
