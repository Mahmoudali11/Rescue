//
//  launchScreen.swift
//  RescueMe
//
//  Created by Admin on 2/10/19.
//  Copyright © 2019 AAMM. All rights reserved.
//

import UIKit

class launchScreen: UIViewController {
    @IBOutlet weak var img:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
img.image=UIImage(named: "GlossyHarshHoneycreeper-size_restricted")
        // Do any additional setup after loading the view.
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
