//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Erik Kusnandar on 07/10/18.
//  Copyright © 2018 Freelance. All rights reserved.
//

import UIKit

class WeatherView: UIView {
    
    
    let backgroundView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(red: 172/255, green: 92/255, blue: 164/255, alpha: 1)
        return view
    }()
    
    let topStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
    
    let cityDayStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
    
    let conditionStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
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
        label.font = UIFont(name: "HelveticaNeue-Thin", size: 200)
        label.text = "17°"
        label.textAlignment = .center
        label.textColor = UIColor(white: 1, alpha: 0.8)
        return label
    }()
    
    let windLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont(name: "HelveticaNeue-Thin", size: 14)
        label.text = "4kph"
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupPinEdges()
        
    }
    
    func setupView() {
        addSubview(backgroundView)
        addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(topStackView)
        topStackView.addArrangedSubview(conditionStackView)
        topStackView.addArrangedSubview(cityDayStackView)
        
        conditionStackView.addArrangedSubview(conditionImageView)
        
        cityDayStackView.addArrangedSubview(cityLabel)
        cityDayStackView.addArrangedSubview(dayLabel)
        
        mainStackView.addArrangedSubview(temperaturLabel)
        
        //        addConstraintsWithFormat(format: "H:|[v0]|", views: backgroundView)
        //        addConstraintsWithFormat(format: "V:|[v0]|", views: backgroundView)
        
        //        addConstraintsWithFormat(format: "H:|[v0]|", views: mainStackView)
        //        addConstraintsWithFormat(format: "V:|[v0]|", views: mainStackView)
        
        
    }
    
    
    func setupPinEdges() {
        backgroundView.pinEdges(to: self)
        mainStackView.pinEdges(to: self)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
