//
//  HorizontalCVTableViewCell.swift
//  Restaurant
//
//  Created by Lohit on 06/06/24.
//

import UIKit


//protocol dataSendingProtocol{
//
//    func sendDatatoPrevuiousClass(dictValues:[String:String])
//}

//struct Horizontalviewstruct {
//    var HorizontalLogo = String()
//    var HorizontalName = String()
//    var openorclosed = String()
//    var Name = String()
//    var Address = String()
//    var km = String()
//    var time = String()
//    var price = String()
//    var description = String()
//
//}

//class HorizontalViewClass {
//    
//    var HorizontalLogo = String()
//    var HorizontalName = String()
//    var openorclosed = String()
//    var Name = String()
//    var Address = String()
//    var km = String()
//    var time = String()
//    var price = String()
//    var description = String()
//    
//    init(HorizontalLogo: String = String(),HorizontalName: String = String(),openorclosed: String = String(),Name: String = String(),Address: String = String(),km: String = String(),time: String = String(),price: String = String(),description: String = String()) {
//        
//        self.HorizontalLogo = HorizontalLogo
//        self.HorizontalName = HorizontalName
//        self.openorclosed = openorclosed
//        self.Name = Name
//        self.Address = Address
//        self.km = km
//        self.time = time
//        self.price = price
//        self.description = description
//    }
//    
//    
//    
//}


class HorizontalCVTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var HorizontalCollectionView: UICollectionView!
    
 
   
//    var customdelegate:dataSendingProtocol?

    var viewcv = UIViewController()
    
//    var HorizontalViewArray = [[String:String]]()
//
//    var HorizontalViewDict1 = [String:String]()
//    var HorizontalViewDict2 = [String:String]()
//    var HorizontalViewDict3 = [String:String]()
//    var HorizontalViewDict4 = [String:String]()
//    var HorizontalViewDict5 = [String:String]()
//    var HorizontalViewDict6 = [String:String]()
//    var HorizontalViewDict7 = [String:String]()
//
    
    
    
//    var HorizontalViewArray = [Horizontalviewstruct]() //struct
//    var HorizontalViewArray = [HorizontalViewClass] () //class
//    var HorizontalViewArray = [ModelClass_HorizontalCv]()//ModelClass
      var HorizontalViewArray = [AppDelegate.ModelClass_HorizontalCv]()//appdelegate
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        HorizontalCollectionView.delegate = self
        HorizontalCollectionView.dataSource = self
        
        HorizontalCollectionView.register(UINib(nibName: "HorizontalCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HorizontalCollectionViewCell")
        
//        ============ ModelClass =============
        let fooditem1 = AppDelegate.ModelClass_HorizontalCv(HorizontalLogo: "restaruntShop", HorizontalName: "Indian", openorclosed: "Open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", discription: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
       
        let fooditem2 = AppDelegate.ModelClass_HorizontalCv(HorizontalLogo: "ChineseShop", HorizontalName: "Chinese", openorclosed: "CLosed", Name: "5 Star", Address: "Vijayawada, RTC Junction, Near ", km: "5 km", time: "20 min", price: "150.00", discription: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
        
        let fooditem3 = AppDelegate.ModelClass_HorizontalCv(HorizontalLogo: "CoffeeShop", HorizontalName: "Cafe", openorclosed: "Open", Name: "10 Star", Address: "Chennai, RTC Junction, Near", km: "1 km", time: "5 min", price: "100.00", discription: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
        
        let fooditem4 = AppDelegate.ModelClass_HorizontalCv(HorizontalLogo: "CakeShop", HorizontalName: "Bakery", openorclosed: "Open", Name: "Dont know", Address: "100ft ring road,near dabathota", km: "2km", time: "30 min", price: "170.00", discription: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
        
        let fooditem5 = AppDelegate.ModelClass_HorizontalCv(HorizontalLogo: "ChineseShop", HorizontalName: "chineese", openorclosed: "Open", Name: "Chings", Address: "Beside Sr Peters college,near Collector Office,Chennia", km: "3Km", time: "50mins", price: "300.00", discription: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
        
        let fooditem6 = AppDelegate.ModelClass_HorizontalCv(HorizontalLogo: "CoffeeShop", HorizontalName: "CoffeShop", openorclosed: "open", Name: "Cafe Coffee Day", Address: "Chennai, RTC Junction, Near", km: "6 Km", time: "40 Mins", price: "200.00", discription:  "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
        
        let fooditem7 = AppDelegate.ModelClass_HorizontalCv(HorizontalLogo: "CakeShop", HorizontalName: "Bakery", openorclosed: "Open", Name: "Dont know", Address: "100ft ring road,near dabathota", km: "2km", time: "30 min", price: "170.00", discription: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
        
        
        HorizontalViewArray.append(fooditem1)
        HorizontalViewArray.append(fooditem2)
        HorizontalViewArray.append(fooditem3)
        HorizontalViewArray.append(fooditem4)
        HorizontalViewArray.append(fooditem5)
        HorizontalViewArray.append(fooditem6)
        HorizontalViewArray.append(fooditem7)
        
//        ========== Class ==============
//        let fooditem1 = HorizontalViewClass(HorizontalLogo: "restaruntShop", HorizontalName: "Indian", openorclosed: "Open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
//
//        let fooditem2 = HorizontalViewClass(HorizontalLogo: "ChineseShop", HorizontalName: "Chinese", openorclosed: "CLosed", Name: "5 Star", Address: "Vijayawada, RTC Junction, Near ", km: "5 km", time: "20 min", price: "150.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem3 = HorizontalViewClass(HorizontalLogo: "CoffeeShop", HorizontalName: "Cafe", openorclosed: "Open", Name: "10 Star", Address: "Chennai, RTC Junction, Near", km: "1 km", time: "5 min", price: "100.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem4 = HorizontalViewClass(HorizontalLogo: "CakeShop", HorizontalName: "Bakery", openorclosed: "Open", Name: "Dont know", Address: "100ft ring road,near dabathota", km: "2km", time: "30 min", price: "170.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem5 = HorizontalViewClass(HorizontalLogo: "ChineseShop", HorizontalName: "chineese", openorclosed: "Open", Name: "Chings", Address: "Beside Sr Peters college,near Collector Office,Chennia", km: "3Km", time: "50mins", price: "300.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem6 = HorizontalViewClass(HorizontalLogo: "CoffeeShop", HorizontalName: "CoffeShop", openorclosed: "open", Name: "Cafe Coffee Day", Address: "Chennai, RTC Junction, Near", km: "6 Km", time: "40 Mins", price: "200.00", description:  "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem7 = HorizontalViewClass(HorizontalLogo: "CakeShop", HorizontalName: "Bakery", openorclosed: "Open", Name: "Dont know", Address: "100ft ring road,near dabathota", km: "2km", time: "30 min", price: "170.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        HorizontalViewArray.append(fooditem1)
//        HorizontalViewArray.append(fooditem2)
//        HorizontalViewArray.append(fooditem3)
//        HorizontalViewArray.append(fooditem4)
//        HorizontalViewArray.append(fooditem5)
//        HorizontalViewArray.append(fooditem6)
//        HorizontalViewArray.append(fooditem7)
        
//       =============== Struct===============
        
//        let fooditem1 = Horizontalviewstruct(HorizontalLogo: "restaruntShop", HorizontalName: "Indian", openorclosed: "Open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
//
//        let fooditem2 = Horizontalviewstruct(HorizontalLogo: "ChineseShop", HorizontalName: "Chinese", openorclosed: "CLosed", Name: "5 Star", Address: "Vijayawada, RTC Junction, Near ", km: "5 km", time: "20 min", price: "150.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem3 = Horizontalviewstruct(HorizontalLogo: "CoffeeShop", HorizontalName: "Cafe", openorclosed: "Open", Name: "10 Star", Address: "Chennai, RTC Junction, Near", km: "1 km", time: "5 min", price: "100.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem4 = Horizontalviewstruct(HorizontalLogo: "CakeShop", HorizontalName: "Bakery", openorclosed: "Open", Name: "Dont know", Address: "100ft ring road,near dabathota", km: "2km", time: "30 min", price: "170.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem5 = Horizontalviewstruct(HorizontalLogo: "ChineseShop", HorizontalName: "chineese", openorclosed: "Open", Name: "Chings", Address: "Beside Sr Peters college,near Collector Office,Chennia", km: "3Km", time: "50mins", price: "300.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem6 = Horizontalviewstruct(HorizontalLogo: "CoffeeShop", HorizontalName: "CoffeShop", openorclosed: "open", Name: "Cafe Coffee Day", Address: "Chennai, RTC Junction, Near", km: "6 Km", time: "40 Mins", price: "200.00", description:  "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
//
//        let fooditem7 = Horizontalviewstruct(HorizontalLogo: "CakeShop", HorizontalName: "Bakery", openorclosed: "Open", Name: "Dont know", Address: "100ft ring road,near dabathota", km: "2km", time: "30 min", price: "170.00", description: "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter.")
        
//        HorizontalViewArray.append(fooditem1)
//        HorizontalViewArray.append(fooditem2)
//        HorizontalViewArray.append(fooditem3)
//        HorizontalViewArray.append(fooditem4)
//        HorizontalViewArray.append(fooditem5)
//        HorizontalViewArray.append(fooditem6)
//        HorizontalViewArray.append(fooditem7)

//==================== Dictionary =========================================
//        HorizontalViewDict1["HorizontalLogo"] = "restaruntShop"
//        HorizontalViewDict1["HorizontalName"] = "Indian"
//        HorizontalViewDict1["openorclosed"] = "Open"
//        HorizontalViewDict1["Name"] = "Dolphin"
//        HorizontalViewDict1["Address"] = "Visakhapatnam, RTC Junction, Near"
//        HorizontalViewDict1["km"] = "2 km"
//        HorizontalViewDict1["time"] = "10 min"
//        HorizontalViewDict1["price"] = "400.00"
//        HorizontalViewDict1["description"] = "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia"

        
//        HorizontalViewDict2["HorizontalLogo"] = "ChineseShop"
//        HorizontalViewDict2["HorizontalName"] = "Chinese"
//        HorizontalViewDict2["openorclosed"] = "CLosed"
//        HorizontalViewDict2["Name"] = "5 Star"
//        HorizontalViewDict2["Address"] = "Vijayawada, RTC Junction, Near "
//        HorizontalViewDict2["km"] = "5 km"
//        HorizontalViewDict2["time"] = "20 min"
//        HorizontalViewDict2["price"] = "150.00"
//        HorizontalViewDict2["description"] = "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter."
//
//
//        HorizontalViewDict3["HorizontalLogo"] = "CoffeeShop"
//        HorizontalViewDict3["HorizontalName"] = "Cafe"
//        HorizontalViewDict3["openorclosed"] = "Open"
//        HorizontalViewDict3["Name"] = "10 Star"
//        HorizontalViewDict3["Address"] = "Chennai, RTC Junction, Near"
//        HorizontalViewDict3["km"] = "1 km"
//        HorizontalViewDict3["time"] = "5 min"
//        HorizontalViewDict3["price"] = "100.00"
//        HorizontalViewDict3["description"] = "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter."
//
//
//        HorizontalViewDict4["HorizontalLogo"] = "CakeShop"
//        HorizontalViewDict4["HorizontalName"] = "Bakery"
//        HorizontalViewDict4["openorclosed"] = "Open"
//        HorizontalViewDict4["Name"] = "3 Star"
//        HorizontalViewDict4["Address"] = "Chennai, RTC Junction, Near"
//        HorizontalViewDict4["km"] = "1 km"
//        HorizontalViewDict4["time"] = "5 min"
//        HorizontalViewDict4["price"] = "100.00"
//        HorizontalViewDict4["description"] = "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter."

//        HorizontalViewDict5["HorizontalLogo"] = "ChineseShop"
//        HorizontalViewDict5["HorizontalName"] = "Chinese"
//        HorizontalViewDict5["openorclosed"] = "Open"
//        HorizontalViewDict5["Name"] = "3 Star"
//        HorizontalViewDict5["Address"] = "Chennai, RTC Junction, Near"
//        HorizontalViewDict5["km"] = "1 km"
//        HorizontalViewDict5["time"] = "5 min"
//        HorizontalViewDict5["price"] = "100.00"
//        HorizontalViewDict5["description"] = "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter."
//
//        HorizontalViewDict6["HorizontalLogo"] = "CoffeeShop"
//        HorizontalViewDict6["HorizontalName"] = "CoffeeShop"
//        HorizontalViewDict6["openorclosed"] = "Open"
//        HorizontalViewDict6["Name"] = "3 Star"
//        HorizontalViewDict6["Address"] = "Chennai, RTC Junction, Near"
//        HorizontalViewDict6["km"] = "1 km"
//        HorizontalViewDict6["time"] = "5 min"
//        HorizontalViewDict6["price"] = "100.00"
//        HorizontalViewDict6["description"] = "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter."
       
//        HorizontalViewDict7["HorizontalLogo"] = "CakeShop"
//        HorizontalViewDict7["HorizontalName"] = "Bakery"
//        HorizontalViewDict7["openorclosed"] = "Open"
//        HorizontalViewDict7["Name"] = "3 Star"
//        HorizontalViewDict7["Address"] = "Chennai, RTC Junction, Near"
//        HorizontalViewDict7["km"] = "1 km"
//        HorizontalViewDict7["time"] = "5 min"
//        HorizontalViewDict7["price"] = "100.00"
//        HorizontalViewDict7["description"] = "Thali (meaning or Bhojanam is a round platter used to serve food in South Asia, Southeast Asia and the Caribbean. Thali is also used to refer to an Indian-style meal made up of a selection of various dishes which are served on a platter."
//
//        HorizontalViewArray.append(HorizontalViewDict1)
//        HorizontalViewArray.append(HorizontalViewDict2)
//        HorizontalViewArray.append(HorizontalViewDict3)
//        HorizontalViewArray.append(HorizontalViewDict4)
//        HorizontalViewArray.append(HorizontalViewDict5)
//        HorizontalViewArray.append(HorizontalViewDict6)
//        HorizontalViewArray.append(HorizontalViewDict7)
  
    }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return HorizontalViewArray.count

    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
   
//        =============HORIZONTAL COLLECTIONVIEW CELL==============

            let Horizontalcell = HorizontalCollectionView.dequeueReusableCell(withReuseIdentifier: "HorizontalCollectionViewCell", for: indexPath) as! HorizontalCollectionViewCell

//        =================== dictionary ============
//            let Horizontaldict = HorizontalViewArray[indexPath.row] as! [String:String]   //0 // 1 //2
//            let Horizontalimagename = Horizontaldict["HorizontalLogo"]!
//            let HorizontalLableName = Horizontaldict["HorizontalName"]!//as! String
        
// ===================== Struct/class/modelclass ========================
        let Horizontaldict = HorizontalViewArray[indexPath.row]

        let Horizontalimagename = Horizontaldict.HorizontalLogo
        let HorizontalLableName = Horizontaldict.HorizontalName
        
            Horizontalcell.HorizontalCvImage.image = UIImage(named:Horizontalimagename)
            Horizontalcell.HorizontalCvLable.text = HorizontalLableName
        
        Horizontalcell.layer.borderColor = UIColor.systemGray4.cgColor
        Horizontalcell.layer.borderWidth = 1
        Horizontalcell.layer.cornerRadius = 7.0
      
            return Horizontalcell
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
       
            return CGSize(width: 145, height: 155)
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
//            let selectedDict = HorizontalViewArray[indexPath.row]  as! [String:String]   //0 // 1 //2
        let selectedDict = HorizontalViewArray[indexPath.row]
//        =========== without protocol navIGATION=======
            let detailsvc = DetailsVC.init(nibName: "DetailsVC", bundle: nil)
        
//        detailsvc.detailsDict = selectedDict //dictionary
//        detailsvc.details_Struct = selectedDict //struct
//        detailsvc.details_Class = selectedDict //Class
//          detailsvc.Details_Modelclass = selectedDict //ModelClass

//        let VC1 = viewcv.storyboard!.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        let navController = UINavigationController(rootViewController: detailsvc) // Creating a navigation controller with VC1 at the root of the navigation stack.
        detailsvc.modalPresentationStyle = .custom
        detailsvc.transitioningDelegate = viewcv as? UIViewControllerTransitioningDelegate
        detailsvc.Details_Modelclass = selectedDict //ModelClass
        viewcv.present(navController, animated:true, completion: nil)
//        viewcv.navigationController?.pushViewController(detailsvc, animated: true)
        //        ===========NAVIGATION with protocol =======
//    customdelegate?.sendDatatoPrevuiousClass(dictValues: selectedDict)

         
    
        }
    
    
    //========================= gap betwwen two costum cells top,bottom,right,left=============================
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 15.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
            return UIEdgeInsets(top: 5, left: 5, bottom: 5, right:5)
      
    }
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
