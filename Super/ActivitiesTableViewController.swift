//
//  ActivitiesTableViewController.swift
//  Super
//
//  Created by Greg Hepworth on 03/08/2018.
//  Copyright © 2018 breakbeat.io. All rights reserved.
//

import UIKit
import SwiftyJSON

struct Activity {
    let sequence: Int
    let title: String
    let description: String
}

class ActivitiesTableViewController: UITableViewController {
    
    var activities = [Activity]()
    
    func getActivities() {
        
        guard let activitiesURL = Bundle.main.url(forResource: "activities", withExtension: "json"), let activitiesData = try? Data(contentsOf: activitiesURL) else {
            print("Error finding JSON File")
            return
        }
        
        do {
            let jsonObject = try JSON(data: activitiesData)
            let activitiesArray = jsonObject["activities"].arrayValue
            for activity in activitiesArray {
                let sequence = activity["sequence"].intValue
                let title = activity["title"].stringValue
                let description = activity["description"].stringValue
                
                let activity = Activity(sequence: sequence, title:title, description:description)
                activities.append(activity)
            }
        } catch {
            let nsError = error as NSError
            print(nsError.localizedDescription)
            return
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        getActivities()
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
        cell.detailTextLabel?.text = activity.description

        return cell
    }

}
