//
//  ViewController.swift
//  PickerView
//
//  Created by HoangLuyen on 11/28/17.
//  Copyright © 2017 HoangLuyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    var colors = ["Red", "Green", "Blue", "Yellow","Gray", "Pink","White","Orange","Black","Brown","Beige","Violet","Purple","Dark green","Dark blue","Light brown","Light green"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            self.view.backgroundColor = UIColor.red
        } else if row == 1 {
            self.view.backgroundColor = UIColor.yellow
        } else if row == 2 {
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.blue
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            
        }
    }
}

