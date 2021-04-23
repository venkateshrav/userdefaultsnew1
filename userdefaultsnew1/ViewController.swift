//
//  ViewController.swift
//  userdefaultsnew1
//
//  Created by Venkatesh Ravuru on 23/04/21.
//  Copyright © 2021 Venkatesh Ravuru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        if  credentialsthere(){
            self.performSegue(withIdentifier: "movetohome", sender: nil)
        }
    }
    func credentialsthere() -> Bool{
        let defaults = UserDefaults.standard
        if let _ = defaults.value(forKey: "KName"),let _ = defaults.value(forKey: "KPassword"){
           return true
        }
        return false
    }

    @IBAction func login(_ sender: Any) {
        let defaults = UserDefaults.standard
        if let name = name.text, let password = password.text, name.count != 0, password.count != 0 {
            defaults.setValue(name, forKey: "KName")
            defaults.setValue(password, forKey: "KPassword")
            defaults.synchronize()
            self.performSegue(withIdentifier: "movetohome", sender: nil)
        }
    }
    
}

