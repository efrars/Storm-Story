//
//  DetailViewController.swift
//  My Story
//
//  Created by Efrain Rodriguez on 2/5/23.
//

import UIKit

class DetailViewController: UIViewController {

    var stormInfo: Storm?
    
    
    @IBOutlet weak var infoStory: UITextView!
    
    @IBOutlet weak var stormImage: UIImageView!
    
    
    @IBOutlet weak var pageTitle: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let stormInfo = stormInfo {
            
            infoStory.text = String(stormInfo.info)
            stormImage.image = stormInfo.image
            pageTitle.text = String(stormInfo.pageViewTitle)
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
