//
//  CircleImage.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/7.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var imgName:String
    var body: some View {
        Image(imgName).resizable()
            .clipShape(Circle())
            .overlay(

                Circle().stroke(Color.white, lineWidth: 1))

            .shadow(radius: 3)
    }
}

//struct CircleImage: View {
//    var image: Image
//
//    var body: some View {
//        image
//            .clipShape(Circle())
//            .overlay(Circle().stroke(Color.white, lineWidth: 4))
//            .shadow(radius: 10)
//    }
//}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        CircleImage(imgName:"pokemon")
//        CircleImage(image: Image("pokemon"))
    }
}
