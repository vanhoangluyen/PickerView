//
//  DetailVC.swift
//  PickerView
//
//  Created by HoangLuyen on 11/30/17.
//  Copyright © 2017 HoangLuyen. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var detailLabelText: UILabel!
    
    var getData: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if getData != nil {
            detailLabelText.text = getData
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
