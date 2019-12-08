//
//  ActivityCell.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/7.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct ActivityCell : View {
    var nickName:String
    var timeStamp:String
    var content:String
    var imgName:String
    var body: some View {
        VStack(alignment: .leading){
            HStack{
            Color(red: 240.0/255.0, green: 243.0/255.0, blue: 245.0/255)
            }
            .padding(.top, 0)
            .frame(height: 10.0)
            VStack(){
            
                HStack{
                    CircleImage(imgName: "pokemon")
                        .frame(width: 50, height: 50)
                    VStack{
                        Text(nickName)
                            .padding(.top, 5)
                            .padding(.bottom, 2)
                        Text(timeStamp)
                        .font(Font.system(size: 12)).foregroundColor(Color.gray)
                        .padding(.bottom, 0)
                    }
                    Spacer()
                    Image("ic_kefu")
                }
                
                VStack(alignment: .leading){
                    Text(content)
                    .font(Font.system(size: 15))
                    .lineLimit(2)
                    HStack {
                        Image(imgName)
                    }
                }
            }
            .padding(.horizontal, 8)
            Divider()
            HStack{
                Image("ic_share")
                    .padding(.leading,10)
                Spacer()
                Image("ic_comment")
                Spacer()
                Image("ic_like")
                    .padding(.trailing,10)
            }
        }
        .frame(minHeight: 70)
        .padding(.top,-8)
    }
}

#if DEBUG
struct ActivityCell_Previews : PreviewProvider {
    static var previews: some View {
        ActivityCell(nickName: "皮卡丘", timeStamp: "2小时前",content: "发明一种新吃法#一人食灌蛋手抓饼夹小油条泡菜香肠，挤上番茄酱甜面酱巨好吃呀😘！！灌蛋是灵魂，不能偷懒！！", imgName: "shopping"
        )
    }
}
#endif
