//
//  buscadorController.swift
//  BuscadorSwift
//
//  Created by sergio ivan lopez monzon on 17/02/16.
//  Copyright © 2016 devworms. All rights reserved.
//

import UIKit

class buscadorController: SearchControllerBaseViewController {
    // MARK: Properties
    
    // `searchController` is set when the search button is clicked.
    var searchController: UISearchController!
    
    // MARK: Actions
    
    @IBAction func searchButtonClicked(button: UIBarButtonItem) {
        // Create the search results view controller and use it for the `UISearchController`.
        let searchResultsController = storyboard!.instantiateViewControllerWithIdentifier(SearchResultsViewController.StoryboardConstants.identifier) as! SearchResultsViewController
        
        // Create the search controller and make it perform the results updating.
        searchController = UISearchController(searchResultsController: searchResultsController)
        searchController.searchResultsUpdater = searchResultsController
        searchController.hidesNavigationBarDuringPresentation = false
        
        // Present the view controller.
        presentViewController(searchController, animated: true, completion: nil)
    }
}
