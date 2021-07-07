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
    
 
    //スクロールビュー上の処理
    func verticalScroll() {
        //vcのframe
        vc1.frame = CGRect(x: 0, y: 0, width:1194, height: 1000)
        
        //上部のスクロールビューに多数のボタンを配置
        for i in 0...hondana.count-1 {
            
            let button = UIButton()
    
            //サイズ
            var j:Int
            var k:Int
            j = i%3
            k = i/3
            button.frame = CGRect(x: 150+(j*350), y: 90+(k*300), width: 190, height: 230)
            
            //ボタンそれぞれにタグをつける
            button.tag = i
            //buttonに画像を挿入する処理をする
            setImageForButton(tag: button.tag, button: button)
            
            //////////////////////////////////////
            //setActionForButton(tag: button.tag, button: button)
            /////////////////////////////////////
            
            button.layer.borderWidth = 1
            button.isUserInteractionEnabled = true
            
            //タップしたときに参照する処理を定義
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            
            //長押しした時に参照する処理を定義
            let longPressGesture =
                UILongPressGestureRecognizer(target: self,
                action: #selector(self.longPress(_:)))
            
            longPressGesture.delegate = self
            button.addGestureRecognizer(longPressGesture)
                        
            //vcに載せる
            vc1.addSubview(button)
            
        }
        
        //スクロールビューにvcを配置
        scrollview1.addSubview(vc1)
        scrollview1.contentSize = vc1.bounds.size
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
//
//    func setActionForButton(tag:Int, button:UIButton){
//
//        print("ここには来たよ")
//
//        print(button.frame.origin.x)
//
//    }
    
    //タップのときの動作（次のページへ）
    var id: Int = 0
    @objc func buttonTapped(sender : UIButton) {
        let m = sender.tag
        id = hondana[m]
        performSegue(withIdentifier: "toResult", sender: nil)
    }
    
    //長押しの時の動作
    //現段階では、文字をprint
    @objc func longPress(_ sender: UILongPressGestureRecognizer){
               if sender.state == .began {
                print("LongPress began")
                    if let button = sender.view as? UIButton {
                       
                        print(button.tag)
                        print("x=",button.frame.origin.x,"y=",button.frame.origin.y)
                        
                  
                    } else {
                    //sender.viewはUIButtonではない
                    }
                
               }
               else if sender.state == .ended {
                   //print("Long Pressed !")
                
            }
        }
    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//            // タッチイベントを取得
//            let touchEvent = touches.first!
//
//            // ドラッグ前の座標, Swift 1.2 から
//            let preDx = touchEvent.previousLocation(in: self.view).x
//            let preDy = touchEvent.previousLocation(in: self.view).y
//
//            // ドラッグ後の座標
//            let newDx = touchEvent.location(in: self.view).x
//            let newDy = touchEvent.location(in: self.view).y
//
//            // ドラッグしたx座標の移動距離
//            let dx = newDx - preDx
//            print("x:\(dx)")
//
//            // ドラッグしたy座標の移動距離
//            let dy = newDy - preDy
//            print("y:\(dy)")
//
//            // 画像のフレーム
//            var viewFrame: CGRect = imageBag.frame
//
//            // 移動分を反映させる
//            viewFrame.origin.x += dx
//            viewFrame.origin.y += dy
//
//            imageBag.frame = viewFrame
//
//            self.view.addSubview(imageBag)
//
//            // 小数点以下２桁のみ表示
////            labelX.text = "x: ".appendingFormat("%.2f", newDx)
////            labelY.text = "y: ".appendingFormat("%.2f", newDy)
//        }
    
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
