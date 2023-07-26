//
//  EmotionViewController.swift
//  EmotionApp
//
//  Created by 선상혁 on 2023/07/25.
//

import UIKit

class EmotionViewController: UIViewController {

    @IBOutlet var emotionButton: [UIButton]!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setButton()
        
    }
    
    @IBAction func emotionButtonPressed(_ sender: UIButton) {
        
        count = UserDefaults.standard.integer(forKey: "\(Emotion(rawValue: sender.tag)!)")
        
        UserDefaults.standard.set(count + 1, forKey: "\(Emotion(rawValue: sender.tag)!)")
        
        //UserDefaults.standard.set(count[Emotion.veryHappy.rawValue], forKey: Emotion.veryHappy)
        //print("\(emo[sender.tag - 1])가 \(UserDefaults.standard.integer(forKey: emo[sender.tag - 1].rawValue))번 눌렸습니다.")
    }
    
    func setButton() {
        for button in emotionButton {
            
            button.setTitle("", for: .normal)
            
            button.setImage(UIImage(named: "emoji\(button.tag + 1)"), for: .normal)
            
            //UserDefaults.standard.set(0, forKey: emo[button.tag - 1].rawValue)
            
        }
    }

}
