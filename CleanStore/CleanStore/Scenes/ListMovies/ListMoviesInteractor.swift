//
//  ListMoviesInteractor.swift
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

protocol ListMoviesBusinessLogic {
  func getListMovies()
}

class ListMoviesInteractor: ListMoviesBusinessLogic {

  var presenter: ListMoviesPresentationLogic
  var worker: ListMoviesWorker
    
    var movies: Movie = []
    
    init(presenter: ListMoviesPresentationLogic, worker: ListMoviesWorker) {
        self.presenter = presenter
        self.worker = worker
    }
  
  func getListMovies(){
    worker.doSomeWork(completion: { movie, error in
        if let err = error {
            self.presenter.showErrorScreen(error: err)
        } else {
            if let movie = movie {
                var reponse = ListMovies.Models.Response()
                reponse.movies = movie
                self.movies = movie
                self.presenter.displayMovies(movies: reponse)
            } else {
                self.presenter.showErrorScreen(error: nil)
            }
        }
    })
  }
}
