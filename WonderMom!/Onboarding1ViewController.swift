//
//  Onboarding1ViewController.swift
//  WonderMom!
//
//  Created by Saatchi Bhalla on 11/4/17.
//  Copyright © 2017 Saatchi Bhalla. All rights reserved.
//

import UIKit


class Onboarding1ViewController: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nextBtn.backgroundColor = .clear
        nextBtn.layer.cornerRadius = 20
        
        
        nextBtn.titleLabel?.textColor = UIColor.white
        nextBtn.applyGradient(colours: [UIColor(red:1.00, green:0.47, blue:0.43, alpha:1.0), UIColor(red:1.00, green:0.62, blue:0.34, alpha:1.0)])
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
