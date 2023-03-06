//
//  ViewController.swift
//  Project 5 CourseMaker
//
//  Created by sainath bamen on 21/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cousrseTextfield: UITextField!
    var courseName = ["SWIFT","PYTHON","HTML","CSS","SQL","KOTLIN"]
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cousrseTextfield.inputView = pickerView
        pickerView.delegate = self
        pickerView.dataSource = self
        
        cousrseTextfield.placeholder = "Select Course"
        
    }
    
    @IBAction func doneButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Confirm To Buy", message: "A Selected Course", preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: self.okHandler))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alertController, animated: true)
    }
    func okHandler(alert:UIAlertAction!){
        
            }
    


}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courseName.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courseName[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cousrseTextfield.text = courseName[row]
        cousrseTextfield.resignFirstResponder()

    }
    
    
    
}

