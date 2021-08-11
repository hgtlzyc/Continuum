//
//  Post.swift
//  Continuum
//
//  Created by lijia xu on 8/11/21.
//  Copyright © 2021 trevorAdcock. All rights reserved.
//

import UIKit

class Post {

    var caption: String
    var comments: [Comment]
    var photoData: Data?
    let timeStamp: Date
    
    internal init( caption: String, comments: [Comment] = [], photoData: Data? = nil, timeStamp: Date = Date() ) {
        self.caption = caption
        self.comments = comments
        self.photoData = photoData
        self.timeStamp = timeStamp
    }
    
    var photo: UIImage? {
        get{
            guard let photoData = photoData else { return nil }
            return UIImage(data: photoData)
        }
        set{
            newValue?.jpegData(compressionQuality: 0.5)
        }
    }
    
    
}///End Of Post

