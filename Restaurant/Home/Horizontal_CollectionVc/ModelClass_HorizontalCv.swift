//
//  ModelClass_HorizontalCv.swift
//  Restaurant
//
//  Created by Lohit on 25/06/24.
//

import UIKit

class ModelClass_HorizontalCv: NSObject {
    
    
    var HorizontalLogo:String
    var HorizontalName:String
    var openorclosed:String
    var Name:String
    var Address:String
    var km:String
    var time:String
    var price:String
    var discription:String
    
    init(HorizontalLogo: String,HorizontalName: String,openorclosed: String ,Name: String,Address: String,km: String,time: String,price: String ,discription: String) {
        
        self.HorizontalLogo = HorizontalLogo
        self.HorizontalName = HorizontalName
        self.openorclosed = openorclosed
        self.Name = Name
        self.Address = Address
        self.km = km
        self.time = time
        self.price = price
        self.discription = discription
    }
    

}
