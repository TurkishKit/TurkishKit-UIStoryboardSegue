//
//  SecondViewController.swift
//  TurkishKit-Segue
//
//  Created by Berk Turan on 18.02.2019.
//  Copyright © 2019 Berk Turan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var SecondScreenUILabel: UILabel!
    @IBAction func SecondScreenUIButton(_ sender: UIButton) {
        if(SecondViewController.count < 3){
            SecondViewController.count+=1
            SecondScreenUILabel.text = String.init(SecondViewController.count)
        }else{
            performSegue(withIdentifier: "SegueFromSecondToFirst", sender: nil)
        }
    }
    static var count : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        SecondViewController.count = 0;
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
