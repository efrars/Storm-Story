//
//  ViewController.swift
//  My Story
//
//  Created by Efrain Rodriguez on 1/26/23.
//

import UIKit

class StormViewController: UIViewController {
    
    let stormStory = Storm(image: UIImage(named: "Storm1")!, info: "As a storied, veteran X-Men member, Ororo Munroe - aka Storm - is one of the most powerful mutants on Earth. A trusted and wise leader of the team, with the ability to control and manipulate weather patterns, Storm has created a legacy of both freedom-fighting and mentorship, forever aware of how emotions can cause one’s powers to spiral out of control.", pageViewTitle: "Storm Story")
    let stormPowers = Storm(image: UIImage(named: "Storm-powers")!, info: "Storm draws her power from the Earth's electromagnetic field, allowing her to generate lightning, tornados, blizzards, and massive maelstroms. At times, she's been able to control the air in someone's lungs and the air pressure in a person's inner ear.", pageViewTitle: "Storm Powers!!")
    let stormWeakness = Storm(image: UIImage(named: "Storm-weakness")!, info: "Storm has one weakness, which she her severe claustrophobia, which affects her to this day. When Storm is trapped she is unable to concentrate and her powers will sometimes fall out of control.", pageViewTitle: "Storm Weakness!!")
    var storm: [Storm] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storm = [stormStory,stormPowers,stormWeakness]
    }
    
  
   
   
    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
   
    
   
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailViewController {
            
            if tappedView.tag == 0 {
                detailViewController.stormInfo = storm[0]
                
            }else if tappedView.tag == 1 {
                detailViewController.stormInfo = storm[1]
            }else if tappedView.tag == 2 {
                detailViewController.stormInfo = storm[2]
            }
        }
    }

    
}


 

