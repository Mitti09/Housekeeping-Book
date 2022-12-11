//
//  ViewController.swift
//  HousekeepingBook
//
//  Created by DevApp on 2022/12/05.
//

import UIKit
import FSCalendar

class ViewController: UIViewController,FSCalendarDataSource,FSCalendarDelegate,UITableViewDataSource,UITableViewDelegate {

//** IBOutlet
    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!

//** LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//** Propatiy
    var list = ["月曜","火曜","水曜"]
    
//** MARK ** private func
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }


}

