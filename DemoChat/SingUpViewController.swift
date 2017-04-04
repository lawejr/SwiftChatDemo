//
//  SingUpViewController.swift
//  DemoChat
//
//  Created by Aleksandr Kalinin on 03.04.17.
//  Copyright © 2017 Aleksandr Kalinin. All rights reserved.
//

import UIKit

class SingUpViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
  
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var loginTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var emailTextField: UITextField!
  
  
  @IBAction func addImageButtonPressed(_ sender: UIButton) {
    let image = UIImagePickerController()
    
    image.delegate = self
    image.sourceType = UIImagePickerControllerSourceType.photoLibrary
    image.allowsEditing = true
    
    present(image, animated: true, completion: nil)
  }
  @IBAction func singUpButtonPressed(_ sender: UIButton) {
  }
  
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
      imageView.image = image
    }
    
    picker.dismiss(animated: true, completion: nil)
  }
  
  // Двигаем вверх основной view при открытии клавиатуры
  func textFieldDidBeginEditing(_ textField: UITextField) {
    let mainViewHeigh = self.view.bounds.height
    let mainViewWidth = self.view.bounds.width
    
    // Пример из демки проверяется конкретное значение высоты устройства и экран поднимается на разную высоту, не очень хороший подход. Поискать другое решение
    UIView.animate(withDuration: 0.3) {
      if UIScreen.main.bounds.height > 568 {
        self.view.center = CGPoint(x: mainViewWidth / 2, y: mainViewHeigh / 2 - 60)
      }
    }
  }
  
  func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
    let mainViewHeigh = self.view.bounds.height
    let mainViewWidth = self.view.bounds.width
    
    UIView.animate(withDuration: 0.3) {
      if UIScreen.main.bounds.height > 568 {
        self.view.center = CGPoint(x: mainViewWidth / 2, y: mainViewHeigh / 2)
      }
    }
    
  }
  
  // Прячем клавиатуру по нажатию return
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    emailTextField.resignFirstResponder()
    passwordTextField.resignFirstResponder()
    loginTextField.resignFirstResponder()
    
    return true
  }
  
  // Прячем клавиатуру по нажатию вне поля
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
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
