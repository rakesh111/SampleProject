//
//  ConstituencyViewController.swift
//  COYI
//
//  Created by Rakesh on 12/8/16.
//  Copyright © 2016 sinergia. All rights reserved.
//

import UIKit

class ConstituencyViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var constiLabel: UILabel!
    @IBOutlet weak var constCollectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var nextBTN: UIButton!
    
    var places = ["name1","name2","name3"]
    override func viewDidLoad() {
        
        
        
        constCollectionView.dataSource = self
        constCollectionView.delegate = self
        constCollectionView.register(PlaceCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        constCollectionView.backgroundColor = UIColor.white
        self.nextBTN.layer.cornerRadius = 10
        self.constiLabel.layer.borderWidth = 0.5
        self.constiLabel.layer.cornerRadius = 5
        super.viewDidLoad()
        
        nextBTN.backgroundColor = UIColor(colorLiteralRed: 0.278, green: 0.694, blue: 0.537, alpha: 1.00)
        
       


        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
         //print("The places are\(places)")
        return places.count 
       
        
   }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PlaceCollectionViewCell
        
        
       
        //let imageView = UIImageView()
        //cell.backgroundColor = UIColor(colorLiteralRed: 0.278, green: 0.694, blue: 0.537, alpha: 1.00)
        
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor(colorLiteralRed: 0.278, green: 0.694, blue: 0.537, alpha: 1.00).cgColor
        
        
       //cell.placeLabel.tintColor = UIColor(colorLiteralRed: 0.278, green: 0.694, blue: 0.537, alpha: 1.00).cgColor
    
        cell.layer.cornerRadius = 35
        cell.layer.masksToBounds = true
        print("places\(indexPath.row)")
        //cell.placeLabel.text = places[indexPath.row] as! String
        cell.placeLabel.text = places[indexPath.row]
       
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
