//
//  ResultViewController.swift
//  20210325sys
//
//  Created by 廣田美香 on 2021/04/14.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var labelX: UILabel!
    @IBOutlet var labelY: UILabel!
    
    let imageBag = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("きたよ")
        self.view.addBackground(name: "back.png")
        
        
        // Screen Size の取得
        let screenWidth:CGFloat = view.frame.size.width
        let screenHeight:CGFloat = view.frame.size.height
        
        // ハンドバッグの画像を設定
        imageBag.image = UIImage(named: "DrHukuhuku")
        // 画像のフレームを設定
        imageBag.frame = CGRect(x:0, y:0, width:128, height:128)
        
        // 画像をスクリーン中央に設定
        imageBag.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
        
        // タッチ操作を enable
        imageBag.isUserInteractionEnabled = true
        
        self.view.addSubview(imageBag)
        
        // 小数点以下２桁のみ表示
        labelX.text = "x: ".appendingFormat("%.2f", screenWidth/2)
        labelY.text = "y: ".appendingFormat("%.2f", screenHeight/2)
 
        // 画面背景を設定
       
        
        
        // Do any additional setup after loading the view.
    }
    
    // 画面にタッチで呼ばれる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
        
    }
    
    //　ドラッグ時に呼ばれる
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        // タッチイベントを取得
        let touchEvent = touches.first!
        
        // ドラッグ前の座標, Swift 1.2 から
        let preDx = touchEvent.previousLocation(in: self.view).x
        let preDy = touchEvent.previousLocation(in: self.view).y
        
        // ドラッグ後の座標
        let newDx = touchEvent.location(in: self.view).x
        let newDy = touchEvent.location(in: self.view).y
        
        // ドラッグしたx座標の移動距離
        let dx = newDx - preDx
        print("x:\(dx)")
        
        // ドラッグしたy座標の移動距離
        let dy = newDy - preDy
        print("y:\(dy)")
        
        // 画像のフレーム
        var _: CGRect = imageBag.frame
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
