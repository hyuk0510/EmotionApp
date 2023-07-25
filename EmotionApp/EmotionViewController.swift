//
//  EmotionViewController.swift
//  EmotionApp
//
//  Created by 선상혁 on 2023/07/25.
//

import UIKit

class EmotionViewController: UIViewController {

    @IBOutlet var emotionButton: [UIButton]!
    
    let emo = Emotion.allCases
    var count = [1, 1, 1, 1, 1]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setButton()
        
    }
    
    @IBAction func emotionButtonPressed(_ sender: UIButton) {
        
        
        UserDefaults.standard.set(count[sender.tag - 1], forKey: emo[sender.tag - 1].rawValue)
        count[sender.tag - 1] += 1
        print("\(emo[sender.tag - 1])가 \(UserDefaults.standard.integer(forKey: emo[sender.tag - 1].rawValue))번 눌렸습니다.")
    }
    
    func setButton() {
        for button in emotionButton {
            
            button.setTitle("", for: .normal)
            
            button.setImage(UIImage(named: "emoji\(button.tag)"), for: .normal)
            
            UserDefaults.standard.set(0, forKey: emo[button.tag - 1].rawValue)
            
        }
    }

}
