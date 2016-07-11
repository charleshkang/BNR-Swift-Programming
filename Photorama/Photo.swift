//
//  Photo.swift
//  Photorama
//
//  Created by Charles Kang on 7/10/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import CoreData
import UIKit

class Photo: NSManagedObject {

    var image: UIImage?

    
    override func awakeFromInsert()
    {
        super.awakeFromInsert()
        
        // give the properties their initial values
        title = ""
        photoID = ""
        remoteURL = NSURL()
        photoKey = NSUUID().UUIDString
        dateTaken = NSDate()
    }
}
