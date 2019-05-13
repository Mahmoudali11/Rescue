//
//  ViewController.swift
//  Rescue
//
//  Created by Admin on 2/5/19.
//  Copyright © 2019 Mahmoud youssef. All rights reserved.
//

import UIKit

class emergencyNumbersViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var tblView: UITableView!
    
    var Num = Array<numbers>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Num.append(numbers(Name: "إسعاف", Number: "123", Image: "123"))
        Num.append(numbers(Name: "النجدة", Number: "122", Image: "122"))
        Num.append(numbers(Name:"المطافئ", Number: "180", Image: "180"))
        Num.append(numbers(Name: "طوارئ الكهرباء", Number: "121", Image: "121"))
        Num.append(numbers(Name: "طوارئ الغاز", Number: "129", Image: "129"))
        Num.append(numbers(Name: "الطوارئ الموحد", Number: "112", Image: "112"))
        Num.append(numbers(Name: "شرطة السياحه", Number: "126", Image: "126"))
        Num.append(numbers(Name: "شرطة المرور", Number: "126", Image: "128"))
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Num.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:mycell=tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! mycell
        cell.Name.text = Num[indexPath.row].Name
        cell.Number.text = Num[indexPath.row].Number
        cell.Img.image = UIImage(named: Num[indexPath.row].Image!)
        
        return cell
    }
    
}

