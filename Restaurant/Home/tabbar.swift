//
//  tabbar.swift
//  Restaurant
//
//  Created by Lohit on 10/06/24.
//

import UIKit

class tabbar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let TabbarController = storyBoard.instantiateViewController(withIdentifier: "TabbarController") as! UITabBarController
        self.navigationController?.pushViewController(TabbarController, animated: true)
    }


}
