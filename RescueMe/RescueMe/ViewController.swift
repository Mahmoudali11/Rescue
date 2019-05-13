//
//  ViewController.swift
//  RescueMe
//
//  Created by Admin on 2/4/19.
//  Copyright © 2019 AAMM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstAidOb:firstAid!

    @IBOutlet weak var instruction: UITextView!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        instruction.text=firstAidOb.instructions
        img.image=UIImage(named: firstAidOb.img!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

