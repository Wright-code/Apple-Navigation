//
//  ViewController.swift
//  Apple Navigation
//
//  Created by Harry Wright on 29/10/2020.
//

import UIKit

class ListViewController: UITableViewController {
    
    var navigationLinksModel = NavigationLinksModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return navigationLinksModel.nameOfLink.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "NavigationLinkCell", for: indexPath)
        
        cell.textLabel?.text = navigationLinksModel.nameOfLink[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "toTheInternet", sender: self)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! WebViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.url = self.navigationLinksModel.linksToSearch[indexPath.row]
        }
    }
    
}

