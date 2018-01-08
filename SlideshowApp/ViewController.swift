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
    
    
    // 画像を表示
    func displayImage() {
    
        // 画像ファイルのインデックスの指定
        let imageName = imageArray[imageNo]
        
        // 指定されたインデックスの画像を読み込んで表示
        let image = UIImage(named: imageName)
        imageView.image = image
    }
    
    
    // 画像をひとつ進む
    func nextImage() {
        
        imageNo += 1
        
        // 画像ファイル配列インデックスの範囲設定
        if imageNo > 4 {
            imageNo = 0
        }
    }
    
    
    // 画像をひとつ戻る
    func prevImage() {
        
        imageNo -= 1

        // 画像ファイル配列インデックスの範囲設定
        if imageNo < 0 {
            imageNo = 4
        }
    }
    
   
    // 画像の自動送り表示
    func autoNextImage() {
        nextImage()
        displayImage()
    }
    
    
    // スライド動作判定用の変数
    var movingStatus = false
    var timer: Timer! = nil
    
    
    // 初期読み込み
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // 画像表示を実行
        displayImage()
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // 「進む」ボタンをタップしたときの動作
    @IBAction func onTapNext(_ sender: Any) {
    
        // スライド停止中だけ動作する
        if movingStatus == false {
        
            // 画像のひとつ進むを実行
            nextImage()
        
            // 画像表示を実行
            displayImage()
    
        }
    }
    
    
    // 「進む」ボタンをタップしたときの動作
    @IBAction func onTapPrev(_ sender: Any) {
        
        // スライド停止中だけ動作する
        if movingStatus == false {
            
            // 画像のひとつ戻るを実行
            prevImage()
        
            // 画像表示を実行
            displayImage()
        }
    }
    
    
    // 「再生/停止」ボタンをタップしたときの動作
    @IBAction func onTapStartStop(_ sender: Any) {
        
        // 「再生」ボタンをタップしたときの動作
        if movingStatus == false {
            
            // スライド動作のステータスを変更
            movingStatus = true
            
            // 2秒ごとに画像の送り表示を実行
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(autoNextImage), userInfo: nil, repeats: true)
            
        // 「停止」ボタンをタップしたときの動作
        } else {

            // スライド動作のステータスを変更
            movingStatus = false
            
            // 画像の送り表示を停止
            self.timer.invalidate()
            self.timer = nil
        }
    }
    
    
    // 画像をタップしたときの動作
    @IBAction func onTapImage(_ sender: Any) {
    
        // スライド停止中だけ動作する
        if movingStatus == false {
            
            // 画面遷移するセグエ
            performSegue(withIdentifier: "toSecondViewController", sender: nil)
        }
    }
    
    
    // SecondViewControllerに画像を渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // segueから遷移先のSecondViewControllerを取得
        let secondViewController:SecondViewController = segue.destination as! SecondViewController
        
        // 遷移先のSecondViewControllerのimageZoomUp.imageに表示されている画像（imageView.image）を代入
        secondViewController.imageViewZoomUp.image = UIImage(named: imageArray[imageNo])
    }
    
    
    // 遷移先から戻ったときに呼ばれるセグエ
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
}

