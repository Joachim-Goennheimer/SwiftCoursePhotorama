//
//  Photo.swift
//  Photorama
//
//  Created by Joachim Goennheimer on 27.05.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

import Foundation

class Photo: Equatable {
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    
    static func == (lhs: Photo, rhs: Photo) -> Bool {
        return lhs.photoID == rhs.photoID
    }
    
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.remoteURL = remoteURL
        self.photoID = photoID
        self.dateTaken = dateTaken
    }
    
}
