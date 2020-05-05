//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView(story: storyBrain.getStory(storyPlace: 0))
    }
    
    @IBAction func didChoose(_ sender: UIButton) {
        let nextStory = storyBrain.getNextStory(choice: sender.tag)
        setupView(story: nextStory)
    }
    
    func setupView (story: Story) {
        
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
        
    }
    

}

