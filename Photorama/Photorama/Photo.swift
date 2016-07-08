//
//  Photo.swift
//  Photorama
//
//  Created by Charles Kang on 7/7/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import UIKit

class Photo {
    
    let title: String
    let remoteURL: NSURL
    let photoID: String
    let dateTaken: NSDate
    var image: UIImage?
    
    init(title: String, remoteURL: NSURL, photoID: String, dateTaken: NSDate) {
        self.title = title
        self.remoteURL = remoteURL
        self.photoID = photoID
        self.dateTaken = dateTaken
    }
}

extension Photo: Equatable {}

func == (lhs: Photo, rhs: Photo) -> Bool
{
    // two photos are the same if they have the same photoID
    return lhs.photoID == rhs.photoID
}
