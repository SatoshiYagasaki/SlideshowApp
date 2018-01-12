//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by 矢ヶ崎 哲史 on 2018/01/07.
//  Copyright © 2018年 satoshi.yagaaki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // 拡大画像の枠を設置
    @IBOutlet weak var imageViewZoomUp: UIImageView!
    

    // 画像ファイル配列インデックスの変数
    var imageNo = 0
    
    // 画像ファイルの配列
    let zoomUpImageArray = ["image1.jpeg","image2.jpeg","image3.jpeg","image4.jpeg","image5.jpeg"]
    
    // 拡大画像を表示
    func displayZoomUoImage () {
        
        // 拡大画像の変数設定
        let zoomUpImageName = zoomUpImageArray[imageNo]
    
        // 指定された拡大画像を読み込んで表示
        let zoomUpImage = UIImage(named: zoomUpImageName)
        imageViewZoomUp.image = zoomUpImage
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // 拡大画面表示を実行
        displayZoomUoImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
