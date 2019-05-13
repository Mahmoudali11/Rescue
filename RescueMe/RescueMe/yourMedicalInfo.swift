//
//  yourMedicalInfo.swift
//  RescueMe
//
//  Created by Admin on 2/9/19.
//  Copyright © 2019 AAMM. All rights reserved.
//

import UIKit
import CoreData

class yourMedicalInfo: UITableViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var arrOfBloodTypes=["A+","A-","B+","B-","O-","O+","AB+","AB-"]
    @IBOutlet weak var typeOfBlood: UIPickerView!
   
    @IBOutlet weak var improvedMedicine: UITextField!
    
    @IBOutlet weak var diabetes: UISwitch!
    
    @IBOutlet weak var bloodPressure: UISwitch!
    
    @IBOutlet weak var heart: UISwitch!
    
    @IBOutlet weak var otherDetailes: UITextField!
    
    @IBOutlet weak var medicineUsed: UITextField!
    
    @IBOutlet weak var inssuranceCo: UITextField!
    let cmd=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
      var yMedicalInfoShow:[PatientEntity]!
    var yMedicalInfoSave:PatientEntity!
    

    
  
        override func viewDidLoad() {
        super.viewDidLoad()
            loadData()
            if yMedicalInfoShow.count==1{
                
            improvedMedicine.text=yMedicalInfoShow[0].improvedMedecine
                
                inssuranceCo.text=yMedicalInfoShow[0].insuranceCompany
                otherDetailes.text=yMedicalInfoShow[0].otherDetailes
                if let index=arrOfBloodTypes.index(of: yMedicalInfoShow[0].typeOfBlood!){
                    typeOfBlood.selectRow(index, inComponent: 0, animated: true)
                    
                }
                diabetes.isOn=yMedicalInfoShow[0].diabetes
                bloodPressure.isOn=yMedicalInfoShow[0].bloodPressure
                heart.isOn=yMedicalInfoShow[0].heart
                medicineUsed.text=yMedicalInfoShow[0].medecineUsed
            }
        
            }
    func loadData()  {
                let request:NSFetchRequest<PatientEntity>=PatientEntity.fetchRequest()
                do{
                    try yMedicalInfoShow=cmd.fetch(request)
                }
                catch{
                    
                }

    }
    
    @IBAction func saveDataToDB(_ sender: AnyObject) {
        if yMedicalInfoShow.count==1{
            let updating={(a:UIAlertAction) in
                if self.bloodPressure.isOn{
                    self.yMedicalInfoShow[0].bloodPressure=true
                }
                else{
                    self.yMedicalInfoShow[0].bloodPressure=false
                    
                }
                if self.diabetes.isOn{
                    self.yMedicalInfoShow[0].diabetes=true
                }
                else{
                    self.yMedicalInfoShow[0].diabetes=false
                    
                }
                
                if self.heart.isOn{
                    self.yMedicalInfoShow[0].heart=true
                }
                else{
                    self.yMedicalInfoShow[0].heart=false
                    
                }
                self.yMedicalInfoShow[0].otherDetailes=self.otherDetailes.text
                self.yMedicalInfoShow[0].improvedMedecine=self.improvedMedicine.text
                self.yMedicalInfoShow[0].typeOfBlood=self.arrOfBloodTypes[self.typeOfBlood.selectedRow(inComponent: 0)]
                self.yMedicalInfoShow[0].insuranceCompany=self.inssuranceCo.text
                self.yMedicalInfoShow[0].medecineUsed=self.medicineUsed.text
                do{
                    try self.cmd.save()
                }
                catch{
                    
                }
                print("dataSaved")
                
            }
            let alert=UIAlertController(title: nil, message: "هل تريد تعديل بيناتك", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "نعم", style: .default, handler: updating))
            alert.addAction(UIAlertAction(title: "لا", style: .default, handler:nil))
            present(alert, animated: true, completion: nil)
            return
           
        }
        
            //print("there are saved Instance ")
                

        
         yMedicalInfoSave=PatientEntity(context: cmd)
        if bloodPressure.isOn{
        yMedicalInfoSave.bloodPressure=true
        }
        else{
            yMedicalInfoSave.bloodPressure=false
  
        }
        if diabetes.isOn{
            yMedicalInfoSave.diabetes=true
        }
        else{
            yMedicalInfoSave.diabetes=false
            
        }

        if heart.isOn{
            yMedicalInfoSave.heart=true
        }
        else{
            yMedicalInfoSave.heart=false
            
        }
      yMedicalInfoSave.otherDetailes=otherDetailes.text
        yMedicalInfoSave.improvedMedecine=improvedMedicine.text
        yMedicalInfoSave.typeOfBlood=arrOfBloodTypes[typeOfBlood.selectedRow(inComponent: 0)]
        yMedicalInfoSave.insuranceCompany=inssuranceCo.text
        yMedicalInfoSave.medecineUsed=medicineUsed.text
        do{
            try cmd.save()
        }
        catch{
            
        }
         print("dataSaved")
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
            return 8
            
    
    }
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
            return arrOfBloodTypes[row]
            }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30.0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
