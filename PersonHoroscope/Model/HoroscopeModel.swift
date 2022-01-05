//
//  HoroscopeModel.swift
//  PersonHoroscope
//
//  Created by Александр Панин on 04.01.2022.
//

import Foundation


struct PersonHoroscope {
    
    let about: TitleHoroscope  // массив описания гороскопа
    let periods: [DataManager]  // массив всех периодов гороскопа
    let person: DataManager  // массив индивидуального гороскопа
    let developer: [Developer] // информация о разработчиках
}

extension PersonHoroscope {
    
    static func getHoroscope(type: Horoscope, data: String) -> PersonHoroscope {
        PersonHoroscope(
            about: AboutHoroscope.gerAboutHoroscope(type: type),
            periods: DataManager.getNamesPeriod(for: type),
            person: Person.getPerson(type: type, data: data),
            developer: Developer.getDeveloper()
        )
    }
}

// MARK - массив личного диапазона гороскопа от его типа и даты рождения ( год - для китая и число.месяц - зодиак и друид)

struct Person {
    static func getPerson(type: Horoscope, data: String) -> DataManager {
        let periods = DataManager.getNamesPeriod(for: type)
        var namePeriod = periods[0]
        switch type {
        case .china:
            let data = Int(data) ?? 2020
            namePeriod = periods[data % 12]
        default :
            let data = Int(data) ?? 0101
            for index in periods {
                let start = Int(index.start) ?? 101
                let finish = Int(index.finish) ?? 101
                if finish < start { 
                    if data >= start || data <= finish { namePeriod = index }
                } else {
                    if data >= start && data <= finish { namePeriod = index }
                }
            }
        }
        return namePeriod
    }
}

// MARK - массив общего описания типа гороскопа

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
