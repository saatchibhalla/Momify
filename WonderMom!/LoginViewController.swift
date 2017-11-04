//
//  LoginViewController.swift
//  WonderMom!
//
//  Created by Saatchi Bhalla on 11/4/17.
//  Copyright © 2017 Saatchi Bhalla. All rights reserved.
//

import UIKit


extension UIView {
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.startPoint = CGPoint(x:0.0, y:0.5)
        gradient.endPoint = CGPoint(x:1.0, y:0.5)
        gradient.cornerRadius = 20
        self.layer.insertSublayer(gradient, at: 0)
    }
}


class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loginButton.backgroundColor = .clear
        loginButton.layer.cornerRadius = 20
        
        
        loginButton.titleLabel?.textColor = UIColor.white
        loginButton.applyGradient(colours: [UIColor(red:1.00, green:0.47, blue:0.43, alpha:1.0), UIColor(red:1.00, green:0.62, blue:0.34, alpha:1.0)])
        
        
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
