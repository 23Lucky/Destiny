//
//  ViewController.swift
//  Destiny
//
//  Created by Damian Jasinowski on 20/03/2019.
//  Copyright © 2019 Damian Jasinowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Our strings
    let story1 = "Your on a bush plane in the co-pilot seat. Your flying to your dad’s house in Canada. Your going fly to your dad’s every summer but today is the first summer you will have to fly to your dad’s. It is the first summer after the divorce your parents had, had. For most of the flight all you can see are forests and a few lakes here and there. You remember that just before you left your mum gave you a hatchet it fitted nicely in your belt and as you looked towards your belt and realise that it is still in your belt. Then you went towards the plane without saying thank you or goodbye. After being on the plane for a couple of hours, the pilot asks you if you want to try fly the plane."
    let answer1a = "You try fly the plane."
    let answer1b = "You thankfully dismiss the pilot’s offer."
    
    let story2 = "The pilot slowly lifts his foot off the rudders and let’s go of the plane’s controls. You take the controls and realize it is surprisingly easy to fly it. You let go of the controls and let the pilot take the controls back. You say thank you to him. You become friends with the pilot."
    let answer2 = "Continue"
    
    let story3 = "Even though you dismissed his offer he still lets go off the rudders and the controls "
    let answer3a = "Leave the controls untouched."
    let answer3b = "Grab the controls quickly."
    
    let story4 = "The pilot regains control not looking as happy as he was before he left."
    let answer4 = "Continue"
    
    let story5 = "You quickly grab the controls. And you accidentally press a control and the plane starts twisting in the air. You loose control and start diving towards a lake. Luckily, the pilot grabs the controls before any serious damage had happened."
    let answer5a = "Say, ’Why did you do that you could have got us killed!’"
    let answer5b = "Say, ‘Thank you for believing in me but I’m not really in a good mood’"
    
    let story6 = "You have become enemies with the pilot"
    let answer6 = "Continue"
    
    
    let story7 = "The pilot brightens up a little."
    let answer7 = "Continue"
    
    let story8 = "As you continue on your flight you smell a horrid odour coming from the pilot and notice that he keeps scratching himself. A few minutes later, the odour keeps getting stronger and the pilot starts to scratch himself more often."
    let answer8a = "Get your deodorant out of your bag and start spraying him with it and tell him he needs a shower!"
    let answer8b = "Ignore the smell and pretend you don’t notice it."
    
    let story9 = "The pilot is secretly allergic to any deodorant and his face became itchy, bumpy red and can started to blister. The pilot shouts in pain, agony and angriness. He lets go of the controls and are heading towards the ground."
    let answer9a = "Grab the controls quickly."
    let answer9b = "Ask the pilot to calm down and grab his controls."
    
    let story10 = "The odour kept worsening. Suddenly, a spasm hit the pilot the force of a hammer. The pilot stopped his mouth went rigid. The pilot said “My chest...it’s tearing apart”. He fell on the floor. Your realise it was a heart attack."
    let answer10a = "Grab the controls over the pilots body."
    let answer10b = "Take the seat belt off the pilot and drop him to the floor. Then sit on his seat and grab the controls."
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    var storyIndex = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        restart()
        
        
        restartButton.isHidden = true
    }
    
    
    //     User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        //         TODO Step 4: Write an IF-Statement to update the views
        
        //        if sender.tag == 1 && storyIndex == 1 {
        //            storyTextView.text = story3
        //            topButton.setTitle(answer3a, for: .normal)
        //            bottomButton.setTitle(answer3b, for: .normal)
        //            storyIndex = 3
        //        } else if sender.tag == 2 && storyIndex == 1 {
        //            storyTextView.text = story2
        //            topButton.setTitle(answer2a, for: .normal)
        //            bottomButton.setTitle(answer2b, for: .normal)
        //            storyIndex = 2
        //        } else if sender.tag == 1 && storyIndex == 3 {
        //            storyTextView.text = story6
        //            topButton.isHidden = true
        //            bottomButton.isHidden = true
        //            storyIndex = 6
        //        } else if sender.tag == 2 && storyIndex == 3 {
        //            storyTextView.text = story5
        //            topButton.isHidden = true
        //            bottomButton.isHidden = true
        //            storyIndex = 5
        //        } else if sender.tag == 1 && storyIndex == 2 {
        //            storyTextView.text = story3
        //            topButton.setTitle(answer3a, for: .normal)
        //            bottomButton.setTitle(answer3b, for: .normal)
        //            storyIndex = 3
        //        } else if sender.tag == 2 && storyIndex == 2 {
        //            storyTextView.text = story4
        //            topButton.isHidden = true
        //            bottomButton.isHidden = true
        //            storyIndex = 4
        //        }
        //        if storyIndex == 6 || storyIndex == 5 || storyIndex == 4 {
        //            restartButton.isHidden = false
        //        }
    }
    
    // TODO Step 6: Modify the IF-Statement to complete the story
    
    
    @IBAction func restartPressed(_ sender: UIButton) {
        restart()
    }
    
    func restart() {
        storyIndex = 1
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        topButton.isHidden = false
        bottomButton.isHidden = false
        restartButton.isHidden = true
    }
}

