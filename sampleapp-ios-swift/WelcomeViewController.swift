//
//  WelcomeViewController.swift
//  sampleapp-ios-swift
//
//  Created by Bart Whiteley on 2/21/18.
//  Copyright © 2018 Tina. All rights reserved.
//

import UIKit

let groupName = "group.com.swift-bit.MSAppCenterTest"

class WelcomeViewController: UIViewController {
    @IBOutlet var readyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let foo = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: groupName) else {
            print("***********************************")
            print("*** Error accessing security group")
            print("***********************************")
            return
        }
        
        self.readyButton.isHidden = false

        // Do any additional setup after loading the view.
    }

    @IBAction func readyButtonTapped(_ sender: Any) {
        let i: Int? = nil
        let s: Int = 1 + i!
        print(s)
    }
    
    @IBAction func crashTapped(_ sender: Any) {
        
        
        fatalError("It Really Crashed!")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
