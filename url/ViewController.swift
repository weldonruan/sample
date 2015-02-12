//
//  ViewController.swift
//  url
//
//  Created by 阮炜 on 15/2/12.
//  Copyright (c) 2015年 阮炜. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var vi:UIView?
    var wv : UIWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 获取内容区长宽
        var sc_width = vi!.frame.width
        var sc_height = vi!.frame.height
        println( "UIView width=\(sc_width) , height=\(sc_height)" )
        
        // 顶设成灰色
        vi?.backgroundColor = UIColor.grayColor()
        
        // 创建UIWebView
        wv = UIWebView(frame: CGRect(x:0,y:20,width:sc_width,height:sc_height-20))
        self.view.addSubview(wv!)
        println( "UIWebView width=\(wv!.frame.width) , height=\(wv!.frame.height)" )
        //打开网页
        var uu  = NSURL(string: "http://map.baidu.com")
        var req = NSURLRequest(URL:uu!)
        wv!.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

