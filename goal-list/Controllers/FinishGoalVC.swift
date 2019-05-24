//
//  FinishGoalVC.swift
//  goal-list
//
//  Created by Brandon Criss on 5/24/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var pointsTextField: UITextField!
    @IBOutlet weak var createGoalButton: UIButton!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsTextField.delegate = self
        createGoalButton.bindToKeyboard()
    }
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgressValue = Int32(0)
        
        do {
            try managedContext.save()
            completion(true)
        } catch let error {
            debugPrint("Save failed \(error.localizedDescription)")
            completion(false)
        }
    }

    @IBAction func createGoalButtonPressed(_ sender: Any) {
        if pointsTextField.text != nil {
            self.save { (success) in
                if success {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
