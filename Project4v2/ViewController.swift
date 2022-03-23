//
//  ViewController.swift
//  Project4v2
//
//  Created by Harun Fazlic on 22. 3. 2022..
//

import UIKit

class ViewController: UITableViewController {
    var websites = ["apple.com","hackingwithswift.com","ilijas.info","klix.ba"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            title = "List of whitelisted sites"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Site", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedSite = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

