//
//  DashboardViewController.swift
//  WonderMom!
//
//  Created by Saatchi Bhalla on 11/4/17.
//  Copyright © 2017 Saatchi Bhalla. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var female: UIButton!
    @IBOutlet weak var male: UIButton!
    @IBOutlet weak var femaleCaption: UILabel!
    @IBOutlet weak var maleCaption: UILabel!
    
    @IBOutlet weak var progressBar: UIImageView!
    @IBOutlet weak var progressCaption: UILabel!
    
    @IBOutlet weak var learnMore: UIButton!
    var femalePressed = true
    
    
    @IBOutlet weak var Goal2: UIButton!
    
    @IBOutlet weak var Goal3: UIButton!
    
    @IBOutlet weak var Goal4: UIButton!
    
    
    @IBAction func pressFemale(_ sender: UIButton) {
        if !femalePressed {
            femalePressed = true
            female.layer.borderWidth = 5
            female.layer.borderColor = UIColor.orange.cgColor
            male.layer.borderWidth = 0
            male.layer.borderColor = UIColor.clear.cgColor
            
            femaleCaption.textColor = UIColor.black
            maleCaption.textColor = UIColor.lightGray
            
            progressBar.image = UIImage(named: "Progress1")
            progressCaption.text = "You completed 7 out of 10 goals!"
            
            female.frame.size.width = 72
            female.frame.size.height = 72
            
            male.frame.size.width = 61
            male.frame.size.height = 61
            
            Goal2.setTitle("Buy prenatal vitamins.", for: .normal)
            Goal3.setTitle("Learn an easy yoga pose.", for: .normal)
            Goal4.setTitle("Meet another mom-to-be", for: .normal)

        }
    }
    
    
    @IBAction func pressMale(_ sender: UIButton) {
        if femalePressed {
            femalePressed = false
            female.layer.borderWidth = 0
            female.layer.borderColor = UIColor.clear.cgColor
            male.layer.borderWidth = 5
            male.layer.borderColor = UIColor.orange.cgColor
            
            female.frame.size.width = 61
            female.frame.size.height = 61
            
            male.frame.size.width = 72
            male.frame.size.height = 72
            
            femaleCaption.textColor = UIColor.lightGray
            maleCaption.textColor = UIColor.black
            
            progressBar.image = UIImage(named: "Progress2")
            progressCaption.text = "David completed 9 out of 10 goals!"
            
            Goal2.setTitle("Clear chemicals", for: .normal)
            Goal3.setTitle("Find birthing class", for: .normal)
            Goal4.setTitle("Share the news on FB", for: .normal)

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        femalePressed = true
        female.layer.borderWidth = 5
        female.layer.borderColor = UIColor.orange.cgColor
        progressBar.image = UIImage(named: "Progress1")
        
        learnMore.backgroundColor = .clear
        learnMore.layer.cornerRadius = 20
        
        
        learnMore.titleLabel?.textColor = UIColor.white
        learnMore.applyGradient(colours: [UIColor(red:1.00, green:0.47, blue:0.43, alpha:1.0), UIColor(red:1.00, green:0.62, blue:0.34, alpha:1.0)])
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
