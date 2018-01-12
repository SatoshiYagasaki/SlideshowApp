//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by 矢ヶ崎 哲史 on 2018/01/07.
//  Copyright © 2018年 satoshi.yagaaki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // 拡大画像のプロパティ
    @IBOutlet weak var imageViewZoomUp: UIImageView!
    

    // 拡大画像ファイル名の変数
    var zoomUpImageName = ""
    
    
    // 初期読み込み（デフォルト）
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // 拡大画面表示を実行
        let zoomUpImage = UIImage(named: zoomUpImageName)
        imageViewZoomUp.image = zoomUpImage
    }

    
    // デフォルト
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
