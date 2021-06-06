//
//  searchViewController.swift
//  20210325sys
//
//  Created by 廣田美香 on 2021/05/13.
//

import UIKit

class searchViewController: UIViewController {

    @IBOutlet var scrollview2: UIScrollView!
    
    var vc1 = UIView()
    let button = UIButton()
    
    // UIScrollViewインスタンス生成
        var scrollView = UIScrollView()
        
        // Screenの高さ
        var screenHeight:CGFloat!
        // Screenの幅
        var screenWidth:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.main.bounds
                screenWidth = screenSize.width
                screenHeight = screenSize.height
                
                // 表示窓のサイズと位置を設定
                scrollView.frame.size =
                    CGSize(width: screenWidth, height: screenWidth-10)
                scrollView.center = self.view.center
                
                // 表示する画像
                let haikei:UIImage = UIImage(named:"haikei_X.png")!
                
                // 画像のサイズ
                let imgW = haikei.size.width
                let imgH = haikei.size.height
                
                // UIImageView 初期化
                let imageView = UIImageView(image: haikei)
                
                // UIScrollViewに追加
                scrollView.addSubview(imageView)
         
                // UIScrollViewの大きさを画像サイズに設定
                scrollView.contentSize = CGSize(width: imgW, height: imgH)
                
                // スクロールの跳ね返り無し
                scrollView.bounces = false
                
                // ビューに追加
                self.view.addSubview(scrollView)
        
        

        // Do any additional setup after loading the view.
    }
    
    func verticalScroll() {
        //vcのframe
        vc1.frame = CGRect(x: 0, y: 0, width:1194, height: 1000)
        
        self.scrollview2.addBackground(name: "haikei_X.png")
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
