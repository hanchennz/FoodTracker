//
//  Meal.swift
//  FoodTracker
//
//  Created by Han Chen on 6/1/16.
//  Copyright © 2016 Han Chen. All rights reserved.
//

import UIKit

class Meal {
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
    }
}