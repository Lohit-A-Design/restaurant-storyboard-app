//
//  DetailsVC.swift
//  CollectionView
//
//  Created by Lohit on 26/03/24.
//

import UIKit

class DetailsVC: UIViewController {
    
    

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var restaurant_title_Label: UILabel!
    @IBOutlet weak var address_Label: UILabel!
    @IBOutlet weak var kms_Label: UILabel!
    @IBOutlet weak var mins_Label: UILabel!
    @IBOutlet weak var price_label: UILabel!
    @IBOutlet weak var Description_lable: UILabel!
    
//    dictionary
//    var detailsDict = [String:String]()
//    stuct
//    var details_Struct:Horizontalviewstruct?
//    class
//    var details_Class:HorizontalViewClass?
//   model class
//    var Details_Modelclass:ModelClass_HorizontalCv?
//    appdelegate
    var Details_Modelclass:AppDelegate.ModelClass_HorizontalCv?

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        ========================= Dictionary ======================
//        print(detailsDict)
//        let imagename = detailsDict["HorizontalLogo"] as! String
//        let Name = detailsDict["Name"] as! String
//        let Address = detailsDict["Address"] as! String
//        let km = detailsDict["km"] as! String
//        let time = detailsDict["time"] as! String
//        let price = detailsDict["price"] as! String
//        let desc = detailsDict["description"] as! String
//
//
//
//        imageview.image = UIImage(named:imagename)
//        restaurant_title_Label.text = Name
//        address_Label.text = Address
//        kms_Label.text = km
//        mins_Label.text = time
//        price_label.text = price
//        Description_lable.text = desc
        
//        =========================== Struct ========================
        
//        let imagename = details_Struct?.HorizontalLogo
//        let Name = details_Struct?.Name
//        let Address = details_Struct?.Address
//        let km = details_Struct?.km
//        let time = details_Struct?.time
//        let price = details_Struct?.price
//        let desc = details_Struct?.description
//
//
//
//        imageview.image = UIImage(named:imagename ?? "")
//        restaurant_title_Label.text = Name
//        address_Label.text = Address
//        kms_Label.text = km
//        mins_Label.text = time
//        price_label.text = price
//        Description_lable.text = desc
        
//        ======== Class ==============
        
//        let imagename = details_Class?.HorizontalLogo
//        let Name = details_Class?.Name
//        let Address = details_Class?.Address
//        let km = details_Class?.km
//        let time = details_Class?.time
//        let price = details_Class?.price
//        let desc = details_Class?.description
//
//
//
//        imageview.image = UIImage(named:imagename ?? "")
//        restaurant_title_Label.text = Name
//        address_Label.text = Address
//        kms_Label.text = km
//        mins_Label.text = time
//        price_label.text = price
//        Description_lable.text = desc
        
//        =============== Model Class ===============
        let imagename = Details_Modelclass?.HorizontalLogo
        let Name = Details_Modelclass?.Name
        let Address = Details_Modelclass?.Address
        let km = Details_Modelclass?.km
        let time = Details_Modelclass?.time
        let price = Details_Modelclass?.price
        let discription = Details_Modelclass?.discription

     
        
        imageview.image = UIImage(named:imagename ?? "")
        restaurant_title_Label.text = Name
        address_Label.text = Address
        kms_Label.text = km
        mins_Label.text = time
        price_label.text = price
        Description_lable.text = discription
        
        
        
    }

 
    
    
    
    }


