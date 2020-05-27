//
//  PhotosViewControllerNew.swift
//  Photorama
//
//  Created by Joachim Goennheimer on 27.05.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

// import Foundation


import UIKit

class PhotosViewController: UIViewController {
    
//    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var collectionView: UICollectionView!
    var store: PhotoStore!
    let photoDataSource = PhotoDataSource()
    
//    func updateImageView(for photo: Photo) {
//        store.fetchImage(for: photo) {
//            (imageResult) -> Void in
//
//            switch imageResult {
//            case let .success(image):
//                self.imageView.image = image
//            case let .failure(error):
//                print("Error downloading image \(error)")
//            }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = photoDataSource
        
//        silver challenge chapter 20. Comment out fetchInterestinPhotos and uncomment fetchRecentPhotos
//        in order to fetch recent photos.
//        store.fetchRecentPhotos() {
        store.fetchInterestingPhotos() {
            (photosResult) -> Void in
            
            switch photosResult {
            case let .success(photos):
                print("Successfully found \(photos.count) photos.")
//                if let firstPhoto = photos.first {
//                    self.updateImageView(for: firstPhoto)
//                }
                self.photoDataSource.photos = photos
            case let .failure(error):
                print("Error fetching interesting photos: \(error)")
                self.photoDataSource.photos.removeAll()
            }
            self.collectionView.reloadSections(IndexSet(integer: 0))
        }
    }
}
