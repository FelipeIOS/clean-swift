//
//  ListMoviesWorker.swift
//  CleanStore
//
//  Created by Felipe Miranda on 10/01/20.
//  Copyright (c) 2020 Felipe Miranda. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

 typealias completion <T> = (_ result: T, _ failure: Error?) -> Void

class ListMoviesWorker{
    func doSomeWork(completion: @escaping completion<Movie?>){
    
        let session = URLSession.shared
        guard let url: URL = URL(string: "https://sky-exercise.herokuapp.com/api/movies") else{return}
    
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
        // Check the response
            
            print(error)
            print(response)
            
            if let err = error{
                completion(nil,err)
            }else{
                do {
                    
                    let movie = try JSONDecoder().decode(Movie.self, from: data ?? Data()) // Decoding our data
                    completion(movie,nil)

                } catch {
                    
                }
            }
        })
        
        task.resume()
  }
}
