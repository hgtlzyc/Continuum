//
//  PostController.swift
//  Continuum
//
//  Created by lijia xu on 8/11/21.
//  Copyright © 2021 trevorAdcock. All rights reserved.
//

import UIKit

enum PostError: LocalizedError {
    
}

class PostController {
    
    static let shared = PostController()
    
    var posts: [Post] = []
    
    // MARK: - CRUD Functions
    func addComment( text: String, post: Post, completion: ( Result<Post, PostError> ) -> Void ) {
        
        post.comments.append(Comment(text: text))
    }
    
    func createPostWith(image: UIImage, caption: String, completion: ( Result<Post, PostError> ) -> Void ) {
        let newPost = Post(caption: caption)
        newPost.photo = image
        
        posts.append(newPost)
        
    }
    
    
    // MARK: - Private init
    private init() {}
    
}///End Of PostController
