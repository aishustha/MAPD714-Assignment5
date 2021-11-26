//
//  ViewController.swift
//  Todo
//
//  Created by Aishwarya Shrestha on 25/11/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView:UITableView!
    private let tasks = ["Task Name", "Another Task Name", "Yet Another Task Name"]
    
    let tableIdentifier = "tasksTable"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: tableIdentifier)
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: tableIdentifier)
        }
        
        //images
        let switchImage = UIImage(named: "switch")
        cell?.imageView?.image = switchImage
        
        let switch2Image = UIImage(named: "switch-2")
        cell?.imageView?.highlightedImage = switch2Image
        
        //adding subtitles
        if indexPath.row < 2
        {
            cell?.detailTextLabel?.text = "completed"
        }

        else {
            cell?.detailTextLabel?.text = "Overdue"
        }
        cell?.textLabel?.text = tasks[indexPath.row]
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

