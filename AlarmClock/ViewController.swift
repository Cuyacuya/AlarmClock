//
//  ViewController.swift
//  AlarmClock
//
//  Created by 공학관559 on 9/16/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var lblPickerTime: UILabel!
    
    var alarmTime: Date?
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats:true)
    }
    
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm:ss EEE"
        lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        
        alarmTime = datePickerView.date
        }
    	
    @objc func updateTime() {
        let date = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간: " + dateFormatter.string(from: date as Date)
        
        
        if let alarm = alarmTime {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            
            let alarmTimeString = formatter.string(from: alarm)
            let currentTimeString = formatter.string(from: date as Date)
            
            if alarmTimeString == currentTimeString {
                view.backgroundColor = UIColor.red
            }
            else {
                view.backgroundColor = UIColor.white
            }
        }
    }
}
