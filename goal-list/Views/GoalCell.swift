//
//  GoalCell.swift
//  goal-list
//
//  Created by Brandon Criss on 5/24/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    
    func configureCell(goal: Goal) {
        self.goalDescLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgressLabel.text = String(describing: goal.goalProgressValue)
    }
}
