//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Lauren Carder on 2/5/19.
//  Copyright © 2019 Lauren Carder. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var courseNameTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem {
            if titleTextField != nil {
                titleTextField.text = assignment.title
                courseNameTextField.text = assignment.courseName
                dueDateTextField.text = assignment.date
                descriptionTextField.text = assignment.description
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem{
        assignment.title = titleTextField.text!
        assignment.courseName = courseNameTextField.text!
        assignment.date = dueDateTextField.text!
        assignment.description = descriptionTextField.text!
        
    }
    }
}

