//
//  ListMoviesViewController.swift
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

protocol ListMoviesDisplayLogic: class {
  func displaySomething(viewModel: ListMovies.Models.ViewModel)
}

class ListMoviesViewController: UIViewController {
    
    
    @IBOutlet weak var listMovieTableView: UITableView! {
        didSet {
            listMovieTableView.delegate = self
            listMovieTableView.dataSource = self
        }
    }
    
    
    lazy var worker = ListMoviesWorker()
    
    lazy var presenter = ListMoviesPresenter(viewController: self)
    
    lazy var interactor: ListMoviesBusinessLogic = ListMoviesInteractor(presenter: presenter, worker: worker)

  
  // MARK: View lifecycle
  
  override func viewDidLoad(){
    super.viewDidLoad()
    
    interactor.doSomething()
  }
}

extension ListMoviesViewController: ListMoviesDisplayLogic {
    func displaySomething(viewModel: ListMovies.Models.ViewModel) {
        
    }
}

extension ListMoviesViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }

}

extension ListMoviesViewController: UITableViewDelegate {
    
}
