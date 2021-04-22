//
//  MenuViewController.swift
//  20210325sys
//
//  Created by 廣田美香 on 2021/03/25.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //背景
        self.view.addBackground(name: "back.png")
    }
    
    @IBAction func toHondana(_ sender: Any) {
        performSegue(withIdentifier: "toHondana", sender: nil)
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
