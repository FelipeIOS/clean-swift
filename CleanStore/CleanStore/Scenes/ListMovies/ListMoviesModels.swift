//
//  ListMoviesModels.swift
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

enum ListMovies
{
  // MARK: Use cases
  
  enum Models
  {
    struct Request
    {
        var url: String?
    }
    struct Response
    {
        var movies:Movie?
    }
    struct ViewModel
    {
    }
  }
}
