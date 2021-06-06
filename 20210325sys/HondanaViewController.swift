//
//  HondanaViewController.swift
//  20210325sys
//
//  Created by 廣田美香 on 2021/03/26.
//

import UIKit


class HondanaViewController: UIViewController, UIGestureRecognizerDelegate {
    
    
    
    @IBOutlet var scrollview1: UIScrollView!
    var vc1 = UIView()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            verticalScroll()
            

            self.view.addBackground(name: "back.png")

        }
    
    
    func verticalScroll() {
        //vcのframe
        vc1.frame = CGRect(x: 0, y: 0, width:1194, height: 1000)
        
        //上部のスクロールビューに多数のボタンを配置
        for i in 0...hondana.count-1 {
            
            //button.addTarget(self, action: #selector(alert), for: .touchUpInside)
            let button = UIButton()
            //サイズ
            var j:Int
            var k:Int
            j = i%3
            k = i/3
      
            button.frame = CGRect(x: 150+(j*350), y: 90+(k*300), width: 190, height: 230)
            //タグ
            button.tag = i
            //buttonに画像を挿入
            setImageForButton(tag: button.tag, button: button)
            

            
            button.isUserInteractionEnabled = true

            self.view.addSubview(button)
            
             //ロングプレス
            let longPressGesture =
                UILongPressGestureRecognizer(target: self,
                    action: #selector(self.longPress(_:)))

            longPressGesture.delegate = self
            
           
            
            // Viewに追加.
            button.addGestureRecognizer(longPressGesture)
        
            button.layer.borderWidth = 1
            
            //buttonを押した時の処理を追加
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            //vcに載せる
            vc1.addSubview(button)
            
        }
        //スクロールビューにvcを配置
        scrollview1.addSubview(vc1)
        scrollview1.contentSize = vc1.bounds.size
       
    }
    
  
    
    var id: Int = 0
    @objc func buttonTapped(sender : UIButton) {
        let m = sender.tag
        id = hondana[m]

        performSegue(withIdentifier: "toResult", sender: nil)
    }
    

//
//   func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?,button:UIButton) {
//
//        //タッチイベント
//        let aTouch = touches.first!
//
//        //タッチされたものがラベルの場合
//        if aTouch.view == button {
//
//        //指の移動先の座標
//        let destLocation = aTouch.location(in: self.view)
//
//        //指の移動前の座標
//        let prevLocation = aTouch.previousLocation(in: self.view)
//
//        //取得した座標を格納する変数
//        var myFrame = button.frame
//
//        //X,Yの移動距離
//        let deltaX = destLocation.x - prevLocation.x
//        let deltaY = destLocation.y - prevLocation.y
//
//        //移動距離分を足す
//        myFrame.origin.x += deltaX
//        myFrame.origin.y += deltaY
//
//        //反映
//        button.frame = myFrame
//
//        }
//
//    }

    @objc func longPress(_ sender: UILongPressGestureRecognizer){
        if sender.state == .began {
                       // 開始は認知される
            print("LongPress began")
            
        }
        else if sender.state == .ended {
            print("Long Pressed !")
        }
//        func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?,button:UIButton) {
//
//            //タッチイベント
//            let aTouch = touches.first!
//
//            //タッチされたものがラベルの場合
//            if aTouch.view == button {
//
//                //指の移動先の座標
//                let destLocation = aTouch.location(in: self.view)
//
//                //指の移動前の座標
//                let prevLocation = aTouch.previousLocation(in: self.view)
//
//                //取得した座標を格納する変数
//                var myFrame = button.frame
//
//                //X,Yの移動距離
//                let deltaX = destLocation.x - prevLocation.x
//                let deltaY = destLocation.y - prevLocation.y
//
//                //移動距離分を足す
//                myFrame.origin.x += deltaX
//                myFrame.origin.y += deltaY
//
//                //反映
//                button.frame = myFrame
//
//            }
//
//        }
                     
        }

    
    func setImageForButton(tag:Int, button:UIButton){
        
        for j in 0...hondana.count-1{
            let imgnum: String = String(hondana[j] + 1)
            let img:UIImage? = UIImage(named:imgnum)!
            switch tag {
            case j:
                button.setImage(img, for: .normal)
            default:
                break
            }
        }
        
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
