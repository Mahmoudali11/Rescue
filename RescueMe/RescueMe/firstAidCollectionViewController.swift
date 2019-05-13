//
//  firstAidCollectionViewController.swift
//  RescueMe
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 AAMM. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class firstAidCollectionViewController: UICollectionViewController {
    var firstAidOba=[firstAid(category: "الام البطن", type: "معدة", img: "2", instructions: "١-قم برط مكان الدغد لحجب السم"),firstAid(category: "", type:" مغص", img: "3", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "", type: "القولون", img: "12", instructions: "١-قوم برط مكان الدغد لحجب السم")]
    var firstAidObb=[firstAid(category: "لدغ", type: "ثعبان", img: "6", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "7", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "8", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "9", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "1", instructions: "١-قوم برط مكان الدغد لحجب السم")]

    var firstAidObc=[firstAid(category: "لدغ", type: "ثعبان", img: "10", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "1", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "11", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "12", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "2", instructions: "١-قوم برط مكان الدغد لحجب السم")]

    var firstAidObd=[firstAid(category: "كهرباء", type: "ثعبان", img: "13", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "14", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "15", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "ثعبان", img: "3", instructions: "١-قوم برط مكان الدغد لحجب السم"),firstAid(category: "لدغ", type: "تمساح", img: "4", instructions: "١-قوم برط مكان الدغد لحجب السم")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="instructions"{
            if let indexPath=collectionView?.indexPathsForSelectedItems{
                let destination=segue.destination as! ViewController
                if indexPath[0].section==0{
                    destination.firstAidOb=firstAidOba[indexPath[0].row]}
             
            if indexPath[0].section==1{
                destination.firstAidOb=firstAidObb[indexPath[0].row]}
        
        if indexPath[0].section==2{
            destination.firstAidOb=firstAidObc[indexPath[0].row]}
   
    
            if indexPath[0].section==3{
                destination.firstAidOb=firstAidObd[indexPath[0].row]
        }

 


        }
        }}
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
           let header=collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as!CollectionReusableViewForCollectionHeader
        if indexPath.section==0{
            header.category.text=firstAidOba[0].category
        }
        if indexPath.section==1{
           header.category.text=firstAidObb[0].category
        }

        if indexPath.section==2{
           header.category.text=firstAidObc[0].category       }
        if indexPath.section==3{
            header.category.text=firstAidObd[0].category        }

               return header
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if section==0{
              
            return firstAidOba.count
            
        }
        if section==1{
           return firstAidObb.count
        }
        if section==2{
            return firstAidObc.count
        }

        else{
            return firstAidObd.count
        }

        
        
        
        
    }
    

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        if  indexPath.section==0{
           cell.img.image=UIImage(named:firstAidOba[indexPath.row].img! )
            cell.type.text=firstAidOba[indexPath.row].type
        }
        if  indexPath.section==1{
            cell.img.image=UIImage(named:firstAidObb[indexPath.row].img! )
            cell.type.text=firstAidObc[indexPath.row].type
        }
        if  indexPath.section==2{
            cell.img.image=UIImage(named:firstAidObc[indexPath.row].img! )
            cell.type.text=firstAidObc[indexPath.row].type
        }
        if  indexPath.section==3{
            cell.img.image=UIImage(named:firstAidObd[indexPath.row].img! )
            cell.type.text=firstAidObd[indexPath.row].type
        }
        // Configure the cell
    
        return cell
    }

   
}
