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
    
    
    let emotionCase = Emotion.allCases
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setLabel()
        setCountLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setCountLabel()
    }
    
    func setLabel() {
        for label in emtionLabel {

            label.clipsToBounds = true
            label.layer.cornerRadius = 15
            
            label.textAlignment = .left
            label.text = "\(emotionCase[label.tag - 1].rawValue)"
            label.textColor = .white
            
        }
    }
    
    func setCountLabel() {
        for label in countEmotionLabel {
            
            count = UserDefaults.standard.integer(forKey: emotionCase[label.tag - 1].rawValue)
            
            label.font = .boldSystemFont(ofSize: 30)

            label.textAlignment = .right
            label.text = "\(count)번"
        }
    }

}
