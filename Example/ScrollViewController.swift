//
//  ViewController.swift
//  Example
//
//  Created by Naver on 07/10/2018.
//  Copyright © 2018 Interactive. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "12"), #imageLiteral(resourceName: "13"), #imageLiteral(resourceName: "14"), #imageLiteral(resourceName: "15"), #imageLiteral(resourceName: "16")]
}

extension ScrollViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.imageView.image = images[indexPath.item]
        return cell
    }
}

extension ScrollViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 290)
    }
}

class ImageCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
}

