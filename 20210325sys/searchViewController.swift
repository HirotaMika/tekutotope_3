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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

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
