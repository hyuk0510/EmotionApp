//
//  CountEmotionViewController.swift
//  EmotionApp
//
//  Created by 선상혁 on 2023/07/25.
//

import UIKit

class CountEmotionViewController: UIViewController {

    @IBOutlet var emtionLabel: [UILabel]!
    @IBOutlet var countEmotionLabel: [UILabel]!
    
    var count = 0
    let labelArray = ["완전행복지수", "조금행복지수", "그냥그런지수", "살짝슬픈지수", "매우슬픈지수"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) //까먹지 말기!
        
        setCountLabel()
    }
    
    func designLabel() {
        for label in emtionLabel {

            label.clipsToBounds = true
            label.layer.cornerRadius = 15
            
            label.textAlignment = .left
            label.text = "\(labelArray[label.tag])"
            label.textColor = .white
        }
        
        for label in countEmotionLabel {
            label.font = .boldSystemFont(ofSize: 30)
            label.textAlignment = .right
        }
    }
    
    func setCountLabel() {
        for label in countEmotionLabel {
            count = UserDefaults.standard.integer(forKey: "\(Emotion(rawValue: label.tag)!)")
            label.text = "\(count)번"
        }
    }

}
