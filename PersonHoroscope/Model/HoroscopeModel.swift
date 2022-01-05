//
//  HoroscopeModel.swift
//  PersonHoroscope
//
//  Created by Александр Панин on 04.01.2022.
//

import Foundation


struct PersonHoroscope {
    
    let about: TitleHoroscope
    let periods: [NamesPeriod]
    let person: NamesPeriod
    
    
}

extension PersonHoroscope {
    
    static func getHoroscope(type: Horoscope, data: String) -> PersonHoroscope {
        
        PersonHoroscope(
            about: AboutHoroscope.gerAboutHoroscope(type: type),
            periods: NamesPeriod.getNamesPeriod(for: type),
            person: Person.getPerson(type: type, data: data)
        )
    }
    
}

struct Person {
    static func getPerson(type: Horoscope, data: String) -> NamesPeriod {
        let periods = NamesPeriod.getNamesPeriod(for: type)
        var namePeriod: NamesPeriod
            switch type {
                
            case .zodiac:
                let data = Int(data) ?? 0101
                for index in periods {
                    let start = Int(index.start) ?? 101
                    let finish = Int(index.finish) ?? 101
                    if data ==(start...finish) {
                        namePeriod = index
                    }
                }
                
                
            case .druid:
                
                
            default :
                let data = Int(data) ?? 2020
                namePeriod = periods[data % 12]
            }
        
        return namePeriod
    }
}

struct AboutHoroscope {
    
    static func gerAboutHoroscope(type: Horoscope) -> TitleHoroscope {
        let horoscope = TitleHoroscope.getTitleHoroscope()
        
        for index in horoscope {
            if type == index.horoscope {
                return index
            }
        }
        return horoscope[0]
    }
}
