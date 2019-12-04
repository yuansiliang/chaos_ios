//
//  MWTabView.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/4.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct MWTabView<Page: View>: View {
    var titles:[String]
    var imgs:[String]
    var imgSels:[String]
    var viewControllers: [UIHostingController<Page>]
    
    //构造方法
    init(_ views: [Page], titles: [String], images:[String], imageSels:[String]) {
        
        let vc0 = UIHostingController(rootView: HomeView())
        let vc1 = UIHostingController(rootView: ShareView())
        let vc2 = UIHostingController(rootView: MessageView())
        let vc3 = UIHostingController(rootView: ProfileView())
        self.viewControllers = [vc0,vc1,vc2,vc3] as! [UIHostingController<Page>]
        self.titles = titles
        self.imgs = images
        self.imgSels = imageSels
    }

    
    var body: some View {
        MWTabBarViewController(titles: titles, imgs: imgs, imgSels: imgSels, controllers: viewControllers)
    }
}
