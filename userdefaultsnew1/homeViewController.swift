//
//  homeViewController.swift
//  userdefaultsnew1
//
//  Created by Venkatesh Ravuru on 23/04/21.
//  Copyright © 2021 Venkatesh Ravuru. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func logout(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "KName")
        defaults.removeObject(forKey: "KPassword")
        defaults.synchronize()
        dismiss(animated: true, completion: nil)
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
