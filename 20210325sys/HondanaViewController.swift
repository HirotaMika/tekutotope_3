//
//  HondanaViewController.swift
//  20210325sys
//
//  Created by 廣田美香 on 2021/03/26.
//

import UIKit


class HondanaViewController: UIViewController {
    
    @IBOutlet var scrollview1: UIScrollView!
    var vc1 = UIView()
    let button = UIButton()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            verticalScroll()
            
            
            
            self.view.addBackground(name: "back.png")
            
//            for i in 0...hondana.count-1 {
//                let button = UIButton()
//
//                //button.addTarget(self, action: #selector(alert), for: .touchUpInside)
//
//                //サイズ
//                var j:Int
//                var k:Int
//                j = i%3
//                k = i/3
//
//                button.frame = CGRect(x: 100+(j*250), y: 50+(k*200), width: 100, height: 130)
//                //タグ
//                button.tag = i
//                //buttonに画像を挿入
//                setImageForButton(tag: button.tag, button: button)
//
//
//                //button.titleの色
//                //button.setTitleColor(.white, for: .normal)
//                button.layer.borderWidth = 1
//                //button.setTitle("sample", for: .normal)
//                //button.setTitleColor(.white, for: .normal)
//
//                //追加したコード
//                button.addTarget(self, action: #selector(pushButton), for: .touchUpInside)
//
//
//                self.view.addSubview(button)
//
//            }

        }
    
    func verticalScroll() {
        //vcのframe
        vc1.frame = CGRect(x: 0, y: 0, width:1194, height: 1000)
        
        //上部のスクロールビューに多数のボタンを配置
        for i in 0...hondana.count-1 {
            
            let button = UIButton()
            
            //button.addTarget(self, action: #selector(alert), for: .touchUpInside)
            
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
            
            
            //button.titleの色
            //button.setTitleColor(.white, for: .normal)
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
        performSegue(withIdentifier: "containsegue", sender: nil)
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
            
    
    @objc func pushButton(sender: UIButton){
            print("button pushed.")
            performSegue(withIdentifier: "toResult", sender: nil)
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
