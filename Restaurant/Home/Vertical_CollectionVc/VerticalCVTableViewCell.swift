//
//  VerticalCVTableViewCell.swift
//  Restaurant
//
//  Created by Lohit on 06/06/24.
//

import UIKit
//import Alamofire


struct VerticalViewArray_struct {
    var VerticalImageView = String()
    var Lable = String()
    var openorclosed = String()
    var Name = String()
    var Address = String()
    var km = String()
    var time = String()
    var price = String()
    var description = String()
}



class VerticalCVTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var VerticalCollectionView: UICollectionView!
    var viewcv = UIViewController()
    
//    ========= Web service ========
//    var apiResults = [[String:Any]]()
    
    
    // ======== Static Data ========
//
//    var VerticalViewArray = [[String:String]]()
//
//        var VerticalViewDict1 = [String:String]()
//        var VerticalViewDict2 = [String:String]()
//        var VerticalViewDict3 = [String:String]()
//        var VerticalViewDict4 = [String:String]()
//        var VerticalViewDict5 = [String:String]()
//        var VerticalViewDict6 = [String:String]()
//        var VerticalViewDict7 = [String:String]()
    
//    =====struct====
    var VerticalViewArray = [VerticalViewArray_struct]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        VerticalCollectionView.delegate = self
        VerticalCollectionView.dataSource = self
        
     
        VerticalCollectionView.register(UINib(nibName: "VerticalCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "VerticalCollectionViewCell")
// ======== Static Data ========
        
//        ===== Struct =====
        
        let VerticalViewStruct1 = VerticalViewArray_struct(VerticalImageView: "burger", Lable: "Dolphin", openorclosed: "open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
        
        let VerticalViewStruct2 = VerticalViewArray_struct(VerticalImageView: "noodles", Lable: "Chineese", openorclosed: "open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
        
        let VerticalViewStruct3 = VerticalViewArray_struct(VerticalImageView: "panipuri", Lable: "Street Food", openorclosed: "open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
        
        let VerticalViewStruct4 = VerticalViewArray_struct(VerticalImageView: "pizza", Lable: "Pizza Hut", openorclosed: "open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
        
        let VerticalViewStruct5 = VerticalViewArray_struct(VerticalImageView: "noodles", Lable: "Chineese", openorclosed: "open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
        
        let VerticalViewStruct6 = VerticalViewArray_struct(VerticalImageView: "burger", Lable: "Dominos", openorclosed: "open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
        
        let VerticalViewStruct7 = VerticalViewArray_struct(VerticalImageView: "noodles", Lable: "Chineese", openorclosed: "open", Name: "Dolphin", Address: "Visakhapatnam, RTC Junction, Near", km: "2 km", time: "10 min", price: "400.00", description: "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia")
        
        VerticalViewArray.append(VerticalViewStruct1)
        VerticalViewArray.append(VerticalViewStruct2)
        VerticalViewArray.append(VerticalViewStruct3)
        VerticalViewArray.append(VerticalViewStruct4)
        VerticalViewArray.append(VerticalViewStruct5)
        VerticalViewArray.append(VerticalViewStruct6)
        VerticalViewArray.append(VerticalViewStruct7)
        
//        ===== Dictionary =====
//        VerticalViewDict1["VerticalImageView"] = "burger"
//        VerticalViewDict1["Lable"] = "Dolphin"
//        VerticalViewDict1["Price"] = "400.00"
//        VerticalViewDict1["openorclosed"] = "Open"
//        VerticalViewDict1["Name"] = "Dolphin"
//        VerticalViewDict1["Address"] = "Visakhapatnam, RTC Junction, Near"
//        VerticalViewDict1["km"] = "2 km"
//        VerticalViewDict1["time"] = "10 min"
//        VerticalViewDict1["price"] = "400.00"
//        VerticalViewDict1["description"] = "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia"
//
//        VerticalViewDict2["VerticalImageView"] = "noodles"
//        VerticalViewDict2["Lable"] = "5 Star"
//        VerticalViewDict2["Price"] = "150.00"
//        VerticalViewDict2["openorclosed"] = "Open"
//        VerticalViewDict2["Name"] = "Dolphin"
//        VerticalViewDict2["Address"] = "Visakhapatnam, RTC Junction, Near"
//        VerticalViewDict2["km"] = "2 km"
//        VerticalViewDict2["time"] = "10 min"
//        VerticalViewDict2["price"] = "400.00"
//        VerticalViewDict2["description"] = "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia"
//
//        VerticalViewDict3["VerticalImageView"] = "panipuri"
//        VerticalViewDict3["Lable"] = "7 Star"
//        VerticalViewDict3["Price"] = "100.00"
//        VerticalViewDict3["openorclosed"] = "Open"
//        VerticalViewDict3["Name"] = "Dolphin"
//        VerticalViewDict3["Address"] = "Visakhapatnam, RTC Junction, Near"
//        VerticalViewDict3["km"] = "2 km"
//        VerticalViewDict3["time"] = "10 min"
//        VerticalViewDict3["price"] = "400.00"
//        VerticalViewDict3["description"] = "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia"
//
//
//        VerticalViewDict4["VerticalImageView"] = "pizza"
//        VerticalViewDict4["Lable"] = "7 Star"
//        VerticalViewDict4["Price"] = "100.00"
//        VerticalViewDict4["openorclosed"] = "Open"
//        VerticalViewDict4["Name"] = "Dolphin"
//        VerticalViewDict4["Address"] = "Visakhapatnam, RTC Junction, Near"
//        VerticalViewDict4["km"] = "2 km"
//        VerticalViewDict4["time"] = "10 min"
//        VerticalViewDict4["price"] = "400.00"
//        VerticalViewDict4["description"] = "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia"
//
//        VerticalViewDict5["VerticalImageView"] = "pizza"
//        VerticalViewDict5["Lable"] = "7 Star"
//        VerticalViewDict5["Price"] = "100.00"
//        VerticalViewDict5["openorclosed"] = "Open"
//        VerticalViewDict5["Name"] = "Dolphin"
//        VerticalViewDict5["Address"] = "Visakhapatnam, RTC Junction, Near"
//        VerticalViewDict5["km"] = "2 km"
//        VerticalViewDict5["time"] = "10 min"
//        VerticalViewDict5["price"] = "400.00"
//        VerticalViewDict5["description"] = "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia"
//
//        VerticalViewDict6["VerticalImageView"] = "pizza"
//        VerticalViewDict6["Lable"] = "7 Star"
//        VerticalViewDict6["Price"] = "100.00"
//        VerticalViewDict6["openorclosed"] = "Open"
//        VerticalViewDict6["Name"] = "Dolphin"
//        VerticalViewDict6["Address"] = "Visakhapatnam, RTC Junction, Near"
//        VerticalViewDict6["km"] = "2 km"
//        VerticalViewDict6["time"] = "10 min"
//        VerticalViewDict6["price"] = "400.00"
//        VerticalViewDict6["description"] = "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia"
//
//        VerticalViewDict7["VerticalImageView"] = "pizza"
//        VerticalViewDict7["Lable"] = "7 Star"
//        VerticalViewDict7["Price"] = "100.00"
//        VerticalViewDict7["openorclosed"] = "Open"
//        VerticalViewDict7["Name"] = "Dolphin"
//        VerticalViewDict7["Address"] = "Visakhapatnam, RTC Junction, Near"
//        VerticalViewDict7["km"] = "2 km"
//        VerticalViewDict7["time"] = "10 min"
//        VerticalViewDict7["price"] = "400.00"
//        VerticalViewDict7["description"] = "The Telugu Wikipedia was begun on 10 December 2003 by Venna Nagarjuna, who is known for Padma. On 28 August 2016, its article count was 65,048—fifth among the Indian-language Wikipedias, after Hindi, Urdu, Tamil and Newar. Wikipedia"
//
//
//        VerticalViewArray.append(VerticalViewDict1)
//        VerticalViewArray.append(VerticalViewDict2)
//        VerticalViewArray.append(VerticalViewDict3)
//        VerticalViewArray.append(VerticalViewDict4)
//        VerticalViewArray.append(VerticalViewDict5)
//        VerticalViewArray.append(VerticalViewDict6)
//        VerticalViewArray.append(VerticalViewDict7)
        
//                self.AlamofireWebservices()

    }

    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
// ======== Static Data ========

        return VerticalViewArray.count
        // ======== Web Services Data ========

//            return self.apiResults.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
   
//        ============= Static VERTICAL COLLECTIONVIEW CELL==============
            
        let VerticalCell = VerticalCollectionView.dequeueReusableCell(withReuseIdentifier: "VerticalCollectionViewCell", for: indexPath) as! VerticalCollectionViewCell
// ==== Dictionary =======
//        let dict = VerticalViewArray[indexPath.row] as! [String:String]   //0 // 1 //2
//        let imagename = dict["VerticalImageView"]!
//        let Name = dict["Lable"] as! String
//        let price = dict["Price"] as! String
        
        let dict = VerticalViewArray[indexPath.row]    //0 // 1 //2
        let imagename = dict.VerticalImageView
        let Name = dict.Lable
        let price = dict.price

        VerticalCell.VerticalImageView.image = UIImage(named:imagename)
        VerticalCell.Lable.text = Name
        VerticalCell.Price.text = price
        
//        let cell = collectionView.cellForItem(at: indexPath)
        VerticalCell.layer.borderColor = UIColor.clear.cgColor
        VerticalCell.layer.borderWidth = 1
        VerticalCell.layer.cornerRadius = 10.0
        VerticalCell.isSelected = false

        return VerticalCell
        
//        ============== WebServices Alamofire ==============
//        let VerticalCell = VerticalCollectionView.dequeueReusableCell(withReuseIdentifier: "VerticalCollectionViewCell", for: indexPath) as! VerticalCollectionViewCell
//            let eachRecord = apiResults[indexPath.row]as! [String:Any] //api data of dictionarys
//
//            let imageURl = eachRecord["artworkUrl60"] as! String
//        VerticalCell.Lable.text = eachRecord["collectionName"] as! String
//        VerticalCell.Price.text = eachRecord["artistName"] as! String
//
//            let url = URL(string: imageURl) // Convert into URL
//
//            print(url)
//
//            let data = try? Data(contentsOf: url!)
//
//            print(data)
//
//            if let imageData = data {
//
//                let image = UIImage(data: imageData)
//                VerticalCell.VerticalImageView.image = image
//
//            }
//        return VerticalCell

    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
//            let selectedDict = VerticalViewArray[indexPath.row]  as! [String:String]   //0 // 1 //2
//            let DetailsVerticalVC = DetailsVerticalVC.init(nibName: "DetailsVerticalVC", bundle: nil)
//          DetailsVerticalVC.detailsDict_VerticalCV = selectedDict
        
        
        let selectedDict = VerticalViewArray[indexPath.row]
        let DetailsVerticalVC = DetailsVerticalVC.init(nibName: "DetailsVerticalVC", bundle: nil)
        DetailsVerticalVC.details_Struct = selectedDict
        
        viewcv.navigationController?.pushViewController(DetailsVerticalVC, animated: true)
    
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        let width = collectionView.frame.size.width/2 - 20
            return CGSize(width: width, height: 220)
        
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 7.0

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

            return UIEdgeInsets(top: 5, left: 5, bottom: 5, right:5)

    }
    
//    ============== web services ===================
  //    func callWebServices(){
  //        var request = URLRequest(url: URL(string: "https://itunes.apple.com/search?media=music&term=bollywood")!)
  //        request.httpMethod = "POST"
  //        request.httpBody = try? JSONSerialization.data(withJSONObject: [], options: [])
  //        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
  //
  //        let session = URLSession.shared
  //        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
  //            print(response!)
  //            do {
  //                let FinalResponse = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
  //                print("Api Response is:\(FinalResponse)")
  //
  //                let resultCount = FinalResponse["resultCount"] as! Int
  //                self.apiResults = FinalResponse["results"] as! [[String:Any]]
  //                print(resultCount)
  //                DispatchQueue.main.async {
  //                    self.VerticalCollectionView.reloadData()
  //                }
  //
  //
  //            } catch {
  //                print("error")
  //            }
  //        })
  //
  //        task.resume()
  //    }
  //    }
//      func AlamofireWebservices() {
//
//
//                  Alamofire.request("https://itunes.apple.com/search?media=music&term=bollywood", method: .post, parameters: nil, encoding: JSONEncoding.default)
//
//                      .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
//                          print("Progress: \(progress.fractionCompleted)")
//                      }
//                      .validate { request, response, data in
//                          return .success
//                      }
//                      .responseJSON { response in
//                          debugPrint(response)
//                          print(response.result.value)
//                          if let responseDict = response.result.value as? [String:Any]{
//                              let resultCount = responseDict["resultCount"] as! Int
//                              self.apiResults = responseDict["results"] as! [[String:Any]]
//                              print(resultCount)
//                          }
//
//
//  //                        DispatchQueue.main.async {
//                                              self.VerticalCollectionView.reloadData()
//  //                                        }
//                      }
//              }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
