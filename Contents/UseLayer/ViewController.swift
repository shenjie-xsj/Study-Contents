//
//  ViewController.swift
//  UseLayer
//
//  Created by EU_ShenJie on 2018/7/26.
//  Copyright © 2018年 EU_ShenJie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var layerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //添加一个CALayer对象
        let blueLayer : CALayer = CALayer()
        //设置CALayer对象属性
        blueLayer.frame = CGRect(x: 50, y: 50, width: 100, height: 100) //设置位置
        blueLayer.backgroundColor = UIColor.blue.cgColor    //设置背景颜色
        //添加为子图层
        layerView.layer.addSublayer(blueLayer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

