//
//  Meal.swift
//  FoodTracker
//
//  Created by Han Chen on 6/1/16.
//  Copyright © 2016 Han Chen. All rights reserved.
//

import UIKit

class Meal: NSObject, NSCoding {
    // MARK: Types
    
    struct PropertyKey {
        static let nameKey = "name"
        static let photoKey = "photo"
        static let ratingKey = "rating"
    }
    
    // MARK: Properties
    
    var name: String
    var rating: Int
    var photo: UIImage?
    
    init?(name: String, rating: Int, photo: UIImage?) {
        if name.isEmpty || rating < 0 {
            return nil
        }

        self.name = name
        self.photo = photo
        self.rating = rating
        
        super.init()
    }
    
    // MARK: NSCoding
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: PropertyKey.nameKey)
        aCoder.encodeObject(photo, forKey: PropertyKey.photoKey)
        aCoder.encodeInteger(rating, forKey: PropertyKey.ratingKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObjectForKey(PropertyKey.nameKey) as! String
        let photo = aDecoder.decodeObjectForKey(PropertyKey.photoKey) as? UIImage
        let rating = aDecoder.decodeIntegerForKey(PropertyKey.ratingKey)

        self.init(name: name, rating: rating, photo: photo)
    }
    
    // MARK: Archiving Paths
    
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("meals")
}