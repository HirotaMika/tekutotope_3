//
//  ViewController.swift
//  20210325sys
//
//  Created by 廣田美香 on 2021/03/25.
//

import UIKit

class ViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //背景の設定
        self.view.addBackground(name: "01.png")
    }

    
    @IBAction func toMenu(_ sender: Any) {
        performSegue(withIdentifier: "toMenu", sender: nil)
    }
    
}

