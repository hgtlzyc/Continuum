//
//  Comment.swift
//  Continuum
//
//  Created by lijia xu on 8/11/21.
//  Copyright © 2021 trevorAdcock. All rights reserved.
//

import Foundation

class Comment {
    
    let text: String
    let date: Date
    
    init( text: String, date: Date = Date() ) {
        self.text = text
        self.date = date
    }
    
    
}///End Of Comment
