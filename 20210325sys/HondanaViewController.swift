//
//  HondanaViewController.swift
//  20210325sys
//
//  Created by 廣田美香 on 2021/03/26.
//

import UIKit


class HondanaViewController: UIViewController {
    
    let button = UIButton()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            self.view.addBackground(name: "back.png")
            
            for i in 0...hondana.count-1 {
                let button = UIButton()
                
                //button.addTarget(self, action: #selector(alert), for: .touchUpInside)
                
                //サイズ
                var j:Int
                var k:Int
                j = i%3
                k = i/3
          
                button.frame = CGRect(x: 100+(j*250), y: 50+(k*200), width: 100, height: 130)
                //タグ
                button.tag = i
                //buttonに画像を挿入
                setImageForButton(tag: button.tag, button: button)
                
                
                //button.titleの色
                //button.setTitleColor(.white, for: .normal)
                button.layer.borderWidth = 1
                //button.setTitle("sample", for: .normal)
                //button.setTitleColor(.white, for: .normal)

                //追加したコード
                button.addTarget(self, action: #selector(pushButton), for: .touchUpInside)
                

                self.view.addSubview(button)
                
            }

        }
    
    func setImageForButton(tag:Int, button:UIButton){
        
        for j in 0...hondana.count-1{
            let imgnum: String = String(hondana[j] + 1)
            let img:UIImage? = UIImage(named:imgnum)!
//            button.frame = CGRect(x: 150+(j*250), y: 90+(j*200), width: img., height: 130)
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
    
    
        
  
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
