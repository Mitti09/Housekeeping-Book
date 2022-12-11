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
    @IBOutlet private weak var calendar: FSCalendar!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var createLogButton: UIButton!
    
//** LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        initDateLabel()
        
        // Do any additional setup after loading the view.
    }

//** Propatiy 後々配列をボタンで作成したものに変更する
    var list = ["月曜","火曜","水曜"]
    let df = DateFormatter()
    
//** MARK ** private func
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        df.dateFormat = "yyyy/MM/dd"
        dateLabel.text = df.string(from: date)
    }


}

//** MARK ** private Extension
extension ViewController {
    func initDateLabel() {
        if dateLabel.text == "" {
        df.dateFormat = "yyyy/MM/dd"
        dateLabel.text = df.string(from: Date())
        }
    }
}

