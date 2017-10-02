//
//  CurrentWeather.swift
//  WeatherAppNew
//
//  Created by Ulad Daratsiuk-Demchuk on 2017-10-02.
//  Copyright © 2017 Uladzislau Daratsiuk. All rights reserved.
//

import Foundation

class CurrentWeather
{
    let temperature: Int?
    let humidity: Int?
    let precipProbability: Int?
    let summary: String?
    
    struct WeatherKeys {
        static let temperature = "temperature"
        static let humidity = "humidity"
        static let precipProbability = "precipProbability"
        static let summary = "summary"
        
    }
    
    
    init(weatherDictionary: [String : Any]){
        
        temperature = weatherDictionary[WeatherKeys.temperature] as? Int
        if let humidityDouble = weatherDictionary[WeatherKeys.humidity] as? Double{
            
            humidity = Int(humidityDouble * 100)
            
        } else{
            humidity = nil
        }
        
        if let precipDouble = weatherDictionary[WeatherKeys.precipProbability] as? Double {
            precipProbability = Int(precipDouble * 100)
        }else{
            precipProbability = nil
        }
       summary = weatherDictionary[WeatherKeys.summary] as? String
    }
    
    /*
 
     "latitude": 37.8267,
     "longitude": -122.4233,
     "timezone": "America/Los_Angeles",
     "currently": {
     "time": 1506960982,
     "summary": "Clear",
     "icon": "clear-day",
     "nearestStormDistance": 246,
     "nearestStormBearing": 2,
     "precipIntensity": 0,
     "precipProbability": 0,
     "temperature": 63.03,
     "apparentTemperature": 63.03,
     "dewPoint": 36.63,
     "humidity": 0.37,
     "pressure": 1011.8,
     "windSpeed": 5.22,
     "windGust": 10.35,
     "windBearing": 344,
     "cloudCover": 0.03,
     "uvIndex": 1,
     "visibility": 10,
     "ozone": 295.09
 */
    
    
}
