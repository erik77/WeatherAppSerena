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
