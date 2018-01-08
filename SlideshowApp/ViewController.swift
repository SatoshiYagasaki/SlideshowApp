//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 矢ヶ崎 哲史 on 2018/01/07.
//  Copyright © 2018年 satoshi.yagaaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // スライド画像を設置
    @IBOutlet weak var imageView: UIImageView!
    
    // 画像ファイル配列インデックスの変数
    var imageNo = 0
    
    // 画像ファイルの配列
    let imageArray = ["image1.jpeg","image2.jpeg","image3.jpeg","image4.jpeg","image5.jpeg"]
    
    // 画像を表示するメソッド
    func displayImage() {
        
        // 画像ファイル配列インデックスの範囲設定
        if imageNo < 0 {
            imageNo = 4
        }
        if imageNo > 4 {
            imageNo = 0
        }

        // 画像ファイルのインデックスの指定
        let imageName = imageArray[imageNo]
        
        // 指定されたインデックスの画像を読み込んで表示
        let image = UIImage(named: imageName)
        imageView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // 画像を表示するメソッドを実行
        displayImage()
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

