//
//  HomeVc.swift
//  Restaurant
//
//  Created by Lohit on 28/05/24.
//

import UIKit
//import Alamofire
//========= Add dataSendingProtocol to HomeVc if using protcol==================
class HomeVc: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var apiResults = [[String:Any]]()
 
    @IBOutlet weak var HomeTableView: UITableView!
    
    
    @IBOutlet weak var MyAccountButton: UIButton!
    @IBOutlet weak var HomeLable: UILabel!
    
//   =====================protocol====================
//    func sendDatatoPrevuiousClass(dictValues:[String:String]){
//        print(dictValues)
//        let detailsvc = DetailsVC.init(nibName: "DetailsVC", bundle: nil)
//                   detailsvc.detailsDict = dictValues
//        self.navigationController?.pushViewController(detailsvc, animated: true)
//    }

  
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeTableView.delegate = self
        HomeTableView.dataSource = self
        
        HomeTableView.register(UINib(nibName: "HorizontalCVTableViewCell", bundle: nil), forCellReuseIdentifier: "HorizontalCVTableViewCell")
        HomeTableView.register(UINib(nibName: "VerticalCVTableViewCell", bundle: nil), forCellReuseIdentifier: "VerticalCVTableViewCell")
        HomeTableView.register(UINib(nibName: "HeaderCell", bundle: nil), forCellReuseIdentifier: "HeaderCell")

        
//        self.callWebServices()
//        self.AlamofireWebservices()
        
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
       
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
        if indexPath.section == 0{
            let HorizontalCVTableViewCell = tableView.dequeueReusableCell(withIdentifier: "HorizontalCVTableViewCell", for: indexPath) as! HorizontalCVTableViewCell
//       with protocol
//            HorizontalCVTableViewCell.customdelegate = self

//           without protocol
            HorizontalCVTableViewCell.viewcv = self
            return HorizontalCVTableViewCell
        }
        
        if indexPath.section == 1{
            let VerticalCVTableViewCell = tableView.dequeueReusableCell(withIdentifier: "VerticalCVTableViewCell", for: indexPath) as! VerticalCVTableViewCell
            VerticalCVTableViewCell.viewcv = self
            return VerticalCVTableViewCell
        }

         return UITableViewCell()
    }
    //protocol
    
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
      
        if indexPath.section == 0{
            return 175.0
        }
        if indexPath.section == 1{
            return 457.0
        }

        return 0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 43.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
//        let HeaderCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell")as! HeaderCell
        let HeaderCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderCell
    
       if section == 0 {
          
        HeaderCell.HeaderViewLable.text = "Browse By Category"
       }
        
       if section == 1
       {
        HeaderCell.HeaderViewLable.text = "Great Spots near you"
       }
      return HeaderCell//.contentView
    }

//    ================================ Vertical,horizontal collection View Controller =======================
    
 
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int
//    {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        if collectionView == VerticalCollectionView {
//            return self.apiResults.count
//        }
//        if collectionView == CollectionViewHorizontal{
//            return HorizontalViewArray.count
//        }
//        return 0
//
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
////        =============VERTICAL COLLECTIONVIEW CELL==============
//        if  collectionView == VerticalCollectionView {
//
//        let cell = VerticalCollectionView.dequeueReusableCell(withReuseIdentifier: "VerticalCollectionViewCell", for: indexPath) as! VerticalCollectionViewCell
//
////        let dict = tableArray[indexPath.row] as! [String:String]   //0 // 1 //2
////        let imagename = dict["VerticalImageView"]!
////        let Name = dict["Lable"]!//as! String
////        let price = dict["Price"]!
//
//            let eachRecord = apiResults[indexPath.row]as! [String:Any] //api data of dictionarys
//
//            let imageURl = eachRecord["artworkUrl60"] as! String
//        cell.Lable.text = eachRecord["collectionName"] as! String
//        cell.Price.text = eachRecord["artistName"] as! String
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
//                cell.VerticalImageView.image = image
//
//            }
//
//
//        return cell
//        }
////        =============HORIZONTAL COLLECTIONVIEW CELL==============
//
//        if collectionView == CollectionViewHorizontal{
//            let Horizontalcell = CollectionViewHorizontal.dequeueReusableCell(withReuseIdentifier: "HorizontalCollectionViewCell", for: indexPath) as! HorizontalCollectionViewCell
//
//            let Horizontaldict = HorizontalViewArray[indexPath.row] as! [String:String]   //0 // 1 //2
//            let Horizontalimagename = Horizontaldict["HorizontalLogo"]!
//            let HorizontalLableName = Horizontaldict["HorizontalName"]!//as! String
//
//            Horizontalcell.HorizontalCvImage.image = UIImage(named:Horizontalimagename)
//            Horizontalcell.HorizontalCvLable.text = HorizontalLableName
//
//
//            return Horizontalcell
//        }
//        return UICollectionViewCell()
//
//    }
//   ============== web services ===================
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
//    func AlamofireWebservices() {
//
//
//                Alamofire.request("https://itunes.apple.com/search?media=music&term=bollywood", method: .post, parameters: nil, encoding: JSONEncoding.default)
//
//                    .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
//                        print("Progress: \(progress.fractionCompleted)")
//                    }
//                    .validate { request, response, data in
//                        return .success
//                    }
//                    .responseJSON { response in
//                        debugPrint(response)
//                        print(response.result.value)
//                        if let responseDict = response.result.value as? [String:Any]{
//                            let resultCount = responseDict["resultCount"] as! Int
//                            self.apiResults = responseDict["results"] as! [[String:Any]]
//                            print(resultCount)
//                        }
//
//
////                        DispatchQueue.main.async {
//                                            self.VerticalCollectionView.reloadData()
////                                        }
//                    }
//            }
    
//    ============= didselect item action==============
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//        let selectedDict = tableArray[indexPath.row]  as! [String:String]   //0 // 1 //2
//
//
//        let detailsvc = DetailsVC.init(nibName: "DetailsVC", bundle: nil)
//        detailsvc.detailsDict = selectedDict
//        self.navigationController?.pushViewController(detailsvc, animated: true)
//
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
//        if collectionView == VerticalCollectionView {
//            return CGSize(width: 150, height: 150)
//        }
//        if collectionView == CollectionViewHorizontal{
//            return CGSize(width: 145, height: 130)
//        }
//        return CGSize()
//    }
//
    
    //========================= gap betwwen two costum cells top,bottom,right,left=============================
    
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 3.0
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 3.0
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//
//            return UIEdgeInsets(top: 3, left: 3, bottom: 3, right:3)
//
//    }

}
