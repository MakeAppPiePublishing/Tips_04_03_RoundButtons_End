//
//  ViewController.swift
//  RoundButtons
//
//  A exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var squareButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLayoutSubviews() { //<-- Add code here
        buttonShadow(button: squareButton)
        squareButton.layer.cornerRadius = squareButton.frame.height * 0.50
        squareButton.layer.masksToBounds = true
        for view in stackView.arrangedSubviews{
            if let button = view as? UIButton{
                button.layer.cornerRadius = button.frame.height * 0.50
                buttonShadow(button: button)
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageShadow()
    }
    
    func imageShadow(){
        imageView.layer.shadowColor = UIColor(named: "#0000FF Match 1")?.cgColor
        imageView.layer.shadowOffset = CGSize(width: 5, height: 6)
        imageView.layer.shadowRadius = 4.0
        imageView.layer.shadowOpacity = 0.4
    }
    
    func buttonShadow(button:UIButton){
        button.layer.shadowColor = UIColor(named: "#0000FF Match 1")?.cgColor
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowRadius = 4.0
        button.layer.shadowOpacity = 0.4
    }

}

