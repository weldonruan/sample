//
//  ViewController.swift
//  url
//
//  Created by 阮炜 on 15/2/12.
//  Copyright (c) 2015年 阮炜. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var wv:UIWebView?;
    @IBOutlet var vi:UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // 测试
        //println( vi
        // 修改UIWebView的属性
        var uu  = NSURL(string: "http://map.baidu.com")
        var req = NSURLRequest(URL:uu!)
        wv!.sizeToFit()
        wv!.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

