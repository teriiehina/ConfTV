//
//  HomeViewController.swift
//  TVConference
//
//  Created by Jeffrey Macko on 10/10/2015.
//  Copyright © 2015 Jeffrey Macko. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// UICollectionViewDelegate
extension HomeViewController {
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }

}

// UICollectionViewDataSource
extension HomeViewController {

//    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        
//    }
//    
//    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//        
//    }
  
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
}
