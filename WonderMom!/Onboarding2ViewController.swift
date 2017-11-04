//
//  Onboarding2ViewController.swift
//  WonderMom!
//
//  Created by Saatchi Bhalla on 11/4/17.
//  Copyright © 2017 Saatchi Bhalla. All rights reserved.
//

import UIKit

class Onboarding2ViewController: UIViewController {

    @IBOutlet weak var inviteBtn: UIButton!
    @IBOutlet weak var skipBtn: UIButton!
    var color = [UIColor(red:1.00, green:0.47, blue:0.43, alpha:1.0), UIColor(red:1.00, green:0.62, blue:0.34, alpha:1.0)]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        inviteBtn.backgroundColor = .clear
        inviteBtn.layer.cornerRadius = 20
        
        
        inviteBtn.titleLabel?.textColor = UIColor.white
        inviteBtn.applyGradient(colours: [UIColor(red:1.00, green:0.47, blue:0.43, alpha:1.0), UIColor(red:1.00, green:0.62, blue:0.34, alpha:1.0)])
        
        
        let gradient = CAGradientLayer()
        gradient.frame =  skipBtn.bounds
        gradient.cornerRadius = 20
        gradient.colors = color.map {$0.cgColor}
        let shape = CAShapeLayer()
        shape.lineWidth = 4
        shape.path = UIBezierPath(roundedRect: skipBtn.bounds, cornerRadius: 20).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape
        
        
        skipBtn.layer.addSublayer(gradient)
        
        
        
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
