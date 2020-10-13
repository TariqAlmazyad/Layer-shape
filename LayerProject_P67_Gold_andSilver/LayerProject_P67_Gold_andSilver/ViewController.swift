//
//  ViewController.swift
//  LayerProject_P67_Gold_andSilver
//
//  Created by Tariq Almazyad on 10/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var label1 = createLabel(text: "212", textColor: .systemRed)
    private lazy var label2 = createLabel(text: "Degrees Fahrenheit", textColor: .systemRed)
    private lazy var label3 = createLabel(text: "is really", textColor: .black)
    private lazy var label4 = createLabel(text: "100", textColor: .systemRed)
    private lazy var label5 = createLabel(text: "Degrees Celsius", textColor: .systemRed)
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [label1,label2,
                                                       label3,label4, label5])
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientBGColor(UIColor.blue, UIColor.green, UIColor.red)
        view.addSubview(stackView)
        stackView.fillSuperviewSafeAreaLayoutGuide()
    }
    
    fileprivate func createLabel(text: String, textColor: UIColor) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 60)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        return label
    }
}
