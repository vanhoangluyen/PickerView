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
    var dataPicker: String?
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
        dataPicker = colors[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let data = dataPicker {
                let controller = segue.destination as! DetailVC
                controller.getData = data
            }
        }
    }
}

