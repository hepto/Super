//
//  ActivitiesTableViewController.swift
//  Super
//
//  Created by Greg Hepworth on 03/08/2018.
//  Copyright © 2018 breakbeat.io. All rights reserved.
//

import UIKit

struct Activity {
    var id: Int
    var title: String
    var text: String
}

class ActivitiesTableViewController: UITableViewController {
    
    var activities = [
        Activity(id: 1, title: "30 minute Fartlek", text: "30 mins of running at a pace and style of your choosing"),
        Activity(id: 2, title: "1.5 minute intervals", text: "8 x 1 min fast, 1.5 min slow intervals"),
        Activity(id: 3, title: "10k fast", text: "Do a 10k as fast as you can")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath)
        
        let activity = activities[indexPath.row]
        cell.textLabel?.text = activity.title
        cell.detailTextLabel?.text = activity.text

        return cell
    }

}
