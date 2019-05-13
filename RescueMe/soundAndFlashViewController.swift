//
//  soundAndFlashViewController.swift
//  RescueMe
//
//  Created by M&A on 2/12/19.
//  Copyright © 2019 AAMM. All rights reserved.
//

import UIKit
import AVFoundation

class soundAndFlashViewController: UIViewController {

    @IBOutlet weak var flashSw: UISwitch!
    @IBOutlet weak var soundSw: UISwitch!
    var player:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        soundSw.isOn=false
        flashSw.isOn=false
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "sos", ofType: "mp3")!
        let url = URL(fileURLWithPath:path)
        do{
            player = try AVAudioPlayer(contentsOf:url)
            player.prepareToPlay()
            
        }
        catch let error as NSError{
            print(error.description)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func flashAction(_ sender: Any) {
        
        if flashSw.isOn{
            
                view.backgroundColor = .black
        }
        else{
          view.backgroundColor = .white
    
            }}
   
    @IBAction func soundAction(_ sender: Any) {
       if soundSw.isOn{
        player.play()
        
            
        }
       else{
        player.stop()
        }
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
