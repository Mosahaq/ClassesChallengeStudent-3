//
//  ViewController.swift
//  ClassesChallenge
//
//  Created by Conan O'Brien on 6/6/18.
//  Copyright (c) 2018 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var favoriteColorField: UITextField!
    @IBOutlet weak var myTextView: UITextView!

    var student = Student()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var stringToDisplay =  "First Name: \(student.firstName)\n"
            stringToDisplay += "Last Name: \(student.lastName)\n"
        //Uncomment the lines below for Stretch #1
            stringToDisplay += "ID Number: \(student.idNumber)\n"
            stringToDisplay += "Favorite Color: \(student.favoriteColor)"
        myTextView.text = stringToDisplay
    }

    @IBAction func onCustomButtonPressed(_ sender: UIButton) {

        let first = firstNameField.text!
        let last = lastNameField.text!
        let id = Int(idField.text!)!
        let color = favoriteColorField.text!

        //Uncomment the lines below for Stretch #2
        student = Student(  first: first, last: last, id: id, color: color)

        myTextView.text =   "First Name: \(student.firstName)\n" +
                            "Last Name: \(student.lastName)\n" +
                            "Id: \(student.idNumber)\n" +
                            "Favorite Color: \(student.favoriteColor)\n"

        view.resignFirstResponder()
    }

    @IBAction func onHelloButtonPressed(_ sender: UIButton) {
        //Uncomment the line below for Stretch #3
        myTextView.text = student.sayHello()
    }
}

