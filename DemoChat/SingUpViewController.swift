//
//  SingUpViewController.swift
//  DemoChat
//
//  Created by Aleksandr Kalinin on 03.04.17.
//  Copyright © 2017 Aleksandr Kalinin. All rights reserved.
//

import UIKit

class SingUpViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var loginTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var emailTextField: UITextField!
  
  
  @IBAction func addImageButtonPressed(_ sender: UIButton) {
  }
  @IBAction func singUpButtonPressed(_ sender: UIButton) {
  }
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

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
