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
    @IBOutlet weak var zsView: UIView!
    @IBOutlet weak var ysView: UIView!
    @IBOutlet weak var zxView: UIView!
    @IBOutlet weak var yxView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "HomeImage")
        //layerView.layer.contents = image;直接把image赋值给contents运行后没有图片，这里需要把图片的UIImage类型转换为CGImage
        layerView.layer.contents = image?.cgImage // 现在就能在界面上显示出图片
        //解决Imge长宽比和View的不一样导致的图像压缩问题（在保持最大宽高值得同时保持图像原有比例）
        //layerView.contentMode = UIViewContentMode.scaleAspectFit
        //另一种解决图像压缩问题的方法，等效于上面那种
        layerView.layer.contentsGravity = kCAGravityResizeAspect
        //另一种解决图像压缩方法，可以和下面那句搭配，上面两句和下面的那句配不起来
        //layerView.layer.contentsGravity = kCAGravityCenter
        //搭配上面这句使用，解决高分辨率问题，设置为1.0，将会以每个点1个像素绘制图片，如果设置为2.0，则会以每个点2个像素绘制图片
        //layerView.layer.contentsScale = (image?.scale)!
        //设置超出边沿部分是否隐藏
        //layerView.layer.masksToBounds = false
        
        //下面这句单独使用（不和上面的搭配）用于指定显示原图的哪个区域。
        //layerView.layer.contentsRect = CGRect(x: 0.5, y: 0, width: 0.5, height: 0.5)
        
        useContentsRect()
        
        //最后这个没弄懂……
        useContentsCenter()
    }
    
    func useContentsCenter() {
        zxView.layer.contents = UIImage(named: "HomeImage")?.cgImage
        zxView.layer.contentsCenter = CGRect(x: 0, y: 0, width: 1, height: 1)
        
        yxView.layer.contents = UIImage(named: "HomeImage")?.cgImage
        yxView.layer.contentsCenter = CGRect(x: 0.1, y: 0.1, width: 0.5, height: 0.5)
    }
    
    func addImageToView(image:UIImage,view:UIView,rect:CGRect){
        view.layer.contents = image.cgImage
        view.layer.contentsGravity = kCAGravityResizeAspect
        view.layer.contentsRect = rect
    }
    
    func useContentsRect() {
        addImageToView(image: UIImage(named: "PHTP")!, view: zsView, rect: CGRect(x: 0.105, y: 0.109375, width: 0.31061428571, height: 0.3355))
        addImageToView(image: UIImage(named: "PHTP")!, view: ysView, rect: CGRect(x: 0.45, y: 0.10, width: 0.515, height: 0.35))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

