//
//  PatientEntity+CoreDataProperties.swift
//  RescueMe
//
//  Created by Admin on 2/12/19.
//  Copyright © 2019 AAMM. All rights reserved.
//

import Foundation
import CoreData


extension PatientEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PatientEntity> {
        return NSFetchRequest<PatientEntity>(entityName: "PatientEntity");
    }

    @NSManaged public var typeOfBlood: String?
    @NSManaged public var medecineUsed: String?
    @NSManaged public var improvedMedecine: String?
    @NSManaged public var insuranceCompany: String?
    @NSManaged public var diabetes: Bool
    @NSManaged public var heart: Bool
    @NSManaged public var bloodPressure: Bool
    @NSManaged public var otherDetailes: String?

}
