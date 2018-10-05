//
//  ViewController.swift
//  WeatherApp
//
//  Created by Erik Kusnandar on 05/10/18.
//  Copyright © 2018 Freelance. All rights reserved.
//

import UIKit

class WeatherMainController: UIViewController {

    var mainView: WeatherView { return view as! WeatherView}
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func loadView() {
        view = WeatherView(frame: UIScreen.main.bounds)
    }

}


class WeatherView: UIView {
    
    let backgroundView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(red: 172/255, green: 92/255, blue: 164/255, alpha: 1)
        return view
    }()
    
    let conditionImageView: UIImageView = {
        let image = UIImage(named: "partlysunny")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "London"
        return label
    }()
    
    let dayLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "WEDNESDAY, September 25"
        return label
    }()
    
    let mainStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
    
    let temperaturLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont(name: "HelveticaNeue-Thin", size: 12)
        label.text = "17°"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        
    }
    
    func setupView() {
        addSubview(backgroundView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", views: backgroundView)
        addConstraintsWithFormat(format: "V:|[v0]|", views: backgroundView)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
