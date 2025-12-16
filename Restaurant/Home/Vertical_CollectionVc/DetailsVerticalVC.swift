//
//  DetailsVerticalVC.swift
//  Restaurant
//
//  Created by Lohit on 10/06/24.
//

import UIKit

class DetailsVerticalVC: UIViewController {

    @IBOutlet weak var imagename_VerticalCv: UIImageView!
    
    @IBOutlet weak var openorclosed_VerticalCv: UILabel!
    
    @IBOutlet weak var Name_VerticalCv: UILabel!
    
    @IBOutlet weak var Address_VerticalCv: UILabel!
    
    @IBOutlet weak var km_VerticalCv: UILabel!
    
    @IBOutlet weak var time_VerticalCv: UILabel!
    
    @IBOutlet weak var price_VerticalCv: UILabel!
    
    @IBOutlet weak var description_VerticalCv: UILabel!
    
//    var detailsDict_VerticalCV = [String:String]()
    var details_Struct:VerticalViewArray_struct?

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//         ===== Dictionary ======
        
//        let imagenameVerticalCv = detailsDict_VerticalCV["VerticalImageView"] as! String
//        let openorclosedVerticalCv = detailsDict_VerticalCV["openorclosed"] as! String
//        let NameVerticalCv = detailsDict_VerticalCV["Name"] as! String
//        let AddressVerticalCv = detailsDict_VerticalCV["Address"] as! String
//        let kmVerticalCv = detailsDict_VerticalCV["km"] as! String
//        let timeVerticalCv = detailsDict_VerticalCV["time"] as! String
//        let priceVerticalCv = detailsDict_VerticalCV["price"] as! String
//        let descVerticalCv = detailsDict_VerticalCV["description"] as! String
//
//        imagename_VerticalCv.image = UIImage(named:imagenameVerticalCv)
//        openorclosed_VerticalCv.text = openorclosedVerticalCv
//        Name_VerticalCv.text = NameVerticalCv
//        Address_VerticalCv.text = AddressVerticalCv
//        km_VerticalCv.text = kmVerticalCv
//        time_VerticalCv.text = timeVerticalCv
//        price_VerticalCv.text = priceVerticalCv
//        description_VerticalCv.text = descVerticalCv
        
        
//        ===== Struct =====
        let imagename = details_Struct?.VerticalImageView
        let openorclosed = details_Struct?.openorclosed
        let Name = details_Struct?.Name
        let Address = details_Struct?.Address
        let km = details_Struct?.km
        let time = details_Struct?.time
        let price = details_Struct?.price
        let desc = details_Struct?.description

     
        
        imagename_VerticalCv.image = UIImage(named:imagename ?? "")
        openorclosed_VerticalCv.text = openorclosed
        Name_VerticalCv.text = Name
        Address_VerticalCv.text = Address
        km_VerticalCv.text = km
        time_VerticalCv.text = time
        price_VerticalCv.text = price
        description_VerticalCv.text = desc
        
        
    }


    @IBAction func BackButton(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let HomeVc = storyBoard.instantiateViewController(withIdentifier: "HomeVc") as! HomeVc
        self.navigationController?.pushViewController(HomeVc, animated: true)
    }
   
}
