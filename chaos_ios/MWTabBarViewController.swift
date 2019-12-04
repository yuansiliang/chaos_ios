//
//  MWTabBarViewController.swift
//  chaos_ios
//
//  Created by  袁斯亮 on 2019/12/4.
//  Copyright © 2019  袁斯亮. All rights reserved.
//

import SwiftUI

struct MWTabBarViewController : UIViewControllerRepresentable {
    //创建结构体中内部类对象
    func makeCoordinator() -> MWTabBarViewController.Coordinator {
        Coordinator(self)
    }
    
    var titles:[String]//结构体熟悉数组
    var imgs:[String]//结构体中的默认图片数组
    var imgSels:[String]//结构体中选中的图片数组
    var controllers:[UIViewController]//UIViewController数组
    
    func makeUIViewController(context: Context) -> UITabBarController {
        //初始化UITabBarController对象
        let tabBar = UITabBarController()
        var index:Int = 0
        //初始化字典对象
        let attributes =  [NSAttributedString.Key.foregroundColor: UIColor.black]
        for vc in controllers {
            let title = titles[index]//底部导航栏文字
            let image = UIImage(named: imgs[index])?.withRenderingMode(.alwaysOriginal)//底部导航栏默认图片
            let imgSel = UIImage(named: imgSels[index])?.withRenderingMode(.alwaysOriginal)//底部导航栏选中图片
            let tabBarItem = UITabBarItem(title: title, image: image, selectedImage: imgSel)//初始化UITabBarItem
            //设置字体颜色
            tabBarItem.setTitleTextAttributes(attributes, for: .selected)
            vc.tabBarItem = tabBarItem
            index += 1
        }
        tabBar.viewControllers = controllers
        tabBar.delegate = context.coordinator
        return tabBar
    }
    
    func updateUIViewController(_ tabBarVC: UITabBarController, context: Context) {
        tabBarVC.setViewControllers(controllers, animated: true)
    }
    
    //自定义UITabBarControllerDelegate对象
    class Coordinator: NSObject, UITabBarControllerDelegate {
        var parent: MWTabBarViewController
        
        //构造方法
        init(_ tabBarVC: MWTabBarViewController) {
            self.parent = tabBarVC
        }
        
        func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        }
        
        func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            return true
        }
    }
}
