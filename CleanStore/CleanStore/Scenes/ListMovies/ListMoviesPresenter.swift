//
//  ListMoviesPresenter.swift
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

protocol ListMoviesPresentationLogic{
    
    func showErrorScreen(error: Error?)
    func displayMovies(movies: ListMovies.Models.Response)
}

class ListMoviesPresenter: ListMoviesPresentationLogic {
    var viewController: ListMoviesDisplayLogic
    
    init(viewController: ListMoviesDisplayLogic) {
        self.viewController = viewController
    }
    

    func showErrorScreen(error: Error?) {
        
    }
    
    func displayMovies(movies: ListMovies.Models.Response) {
        
        var viewModel = ListMovies.Models.ViewModel()
        viewModel.moviesViewModel = MoviesViewModel(listMovies: movies.movies)
        self.viewController.showListMovies(viewModel: viewModel)
    }
}



class MoviesViewModel {
    
    private var listMovies: Movie
    
    init(listMovies: Movie) {
        
        self.listMovies = listMovies
    }
    
    init() {
        self.listMovies = []
    }
    
    var numberOfRows: Int {
        return self.listMovies.count
    }
    
    var numberOfSections: Int {
        return 1
    }
    
    var title: String {
        return self.listMovies.first?.title ?? ""
    }
    
}

