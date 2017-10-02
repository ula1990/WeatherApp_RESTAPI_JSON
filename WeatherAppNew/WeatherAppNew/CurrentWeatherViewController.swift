//
//  CurrentWeatherViewController.swift
//  WeatherAppNew
//
//  Created by Ulad Daratsiuk-Demchuk on 2017-10-02.
//  Copyright © 2017 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class CurrentWeatherViewController: UIViewController {

    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var tempLbl: UILabel!
    @IBOutlet weak var typeTempLbl: UILabel!
    @IBOutlet weak var bgImage: UIImageView!
    
    
    let forecastAPIKey = "4969bc5e453f30dac8abe81ffc76d4cd"
    let coordinate: (lat: Double, long: Double) = (37.8267,-122.4233)
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let forecastService = ForecastService(APIKey: forecastAPIKey)
        forecastService.getForecast(latitude: coordinate.lat , longitude: coordinate.long )
            {( currentWeather) in
                if let currentWeather = currentWeather {
                    DispatchQueue.main.async {
                        if let temperature = currentWeather.temperature {
                            self.tempLbl.text = "\(temperature)"
                        } else {
                            self.tempLbl.text = "No Data"
                        }
                    }
                }
                
        }

    }

}
