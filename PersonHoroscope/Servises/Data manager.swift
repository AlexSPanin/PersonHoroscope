//
//  Data manager.swift
//  PersonHoroscope
//
//  Created by Александр Панин on 01.01.2022.
//

import Foundation
import CoreText
import UIKit

// MARK - массив наименований периодов гороскопов и интервалы периодов

struct DataManager {
    let period: Period
    let start: String
    let finish: String
    let name: String
    let image: String
    let title: String
    let forecast: String
   
    static func getNamesPeriod(for sender: Horoscope) -> [DataManager] {
        switch sender {
        case .zodiac:
            return [
                DataManager(period: .aries, start: "0321", finish: "0420", name: "Овен",image: "aries",
                            title: TitlePeriod.getTitlePeriod(period: .aries).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .aries).forecast),
                DataManager(period: .taurus, start: "0421", finish: "0521", name: "Телец", image: "taurus",
                            title: TitlePeriod.getTitlePeriod(period: .taurus).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .taurus).forecast),
                DataManager(period: .gemini, start: "0522", finish: "0621", name: "Близнецы", image: "gemini",
                            title: TitlePeriod.getTitlePeriod(period: .gemini).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .gemini).forecast),
                DataManager(period: .cancer, start: "0622", finish: "0722", name: "Рак", image: "cancer",
                            title: TitlePeriod.getTitlePeriod(period: .cancer).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cancer).forecast),
                DataManager(period: .leo, start: "0723", finish: "0823", name: "Лев", image: "leo",
                            title: TitlePeriod.getTitlePeriod(period: .leo).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .leo).forecast),
                DataManager(period: .virgo, start: "0824", finish: "0922", name: "Дева", image: "virgo",
                            title: TitlePeriod.getTitlePeriod(period: .virgo).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .virgo).forecast),
                DataManager(period: .libra, start: "0923", finish: "1023", name: "Весы", image: "libra",
                            title: TitlePeriod.getTitlePeriod(period: .libra).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .libra).forecast),
                DataManager(period: .scorpio, start: "1024", finish: "1122", name: "Скорпион", image: "scorpio",
                            title: TitlePeriod.getTitlePeriod(period: .scorpio).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .scorpio).forecast),
                DataManager(period: .sagittarius, start: "1123", finish: "1221", name: "Стрелец", image: "sagittarius",
                            title: TitlePeriod.getTitlePeriod(period: .sagittarius).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .sagittarius).forecast),
                DataManager(period: .capricorn, start: "1222", finish: "0120", name: "Козерог", image: "capricorn",
                            title: TitlePeriod.getTitlePeriod(period: .capricorn).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .capricorn).forecast),
                DataManager(period: .aquarius, start: "0121", finish: "0218", name: "Водолей", image: "aquarius",
                            title: TitlePeriod.getTitlePeriod(period: .aquarius).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .aquarius).forecast),
                DataManager(period: .pisces, start: "0219", finish: "0320", name: "Рыбы", image: "pisces",
                            title: TitlePeriod.getTitlePeriod(period: .pisces).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .pisces).forecast)
            ]
        case .druid:
            return [
                DataManager(period: .apple, start: "1223", finish: "0101", name: "Яблоня", image: "apple",
                            title: TitlePeriod.getTitlePeriod(period: .apple).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .apple).forecast),
                DataManager(period: .fir, start: "0102", finish: "0111", name: "Пихта", image: "fir",
                            title: TitlePeriod.getTitlePeriod(period: .fir).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .fir).forecast),
                DataManager(period: .elm, start: "0112", finish: "0124", name: "Вяз", image: "elm",
                            title: TitlePeriod.getTitlePeriod(period: .elm).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .elm).forecast),
                DataManager(period: .cypress, start: "0125", finish: "0203", name: "Кипарис", image: "cypress",
                            title: TitlePeriod.getTitlePeriod(period: .cypress).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cypress).forecast),
                DataManager(period: .poplar, start: "0204", finish: "0208", name: "Тополь", image: "poplar",
                            title: TitlePeriod.getTitlePeriod(period: .poplar).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .poplar).forecast),
                DataManager(period: .cedar, start: "0209", finish: "0218", name: "Кедр", image: "cedar",
                            title: TitlePeriod.getTitlePeriod(period: .cedar).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cedar).forecast),
                DataManager(period: .pine, start: "0219", finish: "0229", name: "Сосна", image: "pine",
                            title: TitlePeriod.getTitlePeriod(period: .pine).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .pine).forecast),
                DataManager(period: .willow, start: "0301", finish: "0310", name: "Ива", image: "willow",
                            title: TitlePeriod.getTitlePeriod(period: .willow).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .willow).forecast),
                DataManager(period: .linder, start: "0311", finish: "0320", name: "Липа", image: "linder",
                            title: TitlePeriod.getTitlePeriod(period: .linder).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .linder).forecast),
                DataManager(period: .oak, start: "0321", finish: "0321", name: "Дуб", image: "oak",
                            title: TitlePeriod.getTitlePeriod(period: .oak).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .oak).forecast),
                DataManager(period: .hazel, start: "0322", finish: "0331", name: "Орешник", image: "hazel",
                            title: TitlePeriod.getTitlePeriod(period: .hazel).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .hazel).forecast),
                DataManager(period: .rowan, start: "0401", finish: "0410", name: "Рябина", image: "rowan",
                            title: TitlePeriod.getTitlePeriod(period: .rowan).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rowan).forecast),
                DataManager(period: .maple, start: "0411", finish: "0420", name: "Клен", image: "maple",
                            title: TitlePeriod.getTitlePeriod(period: .maple).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .maple).forecast),
                DataManager(period: .nut, start: "0421", finish: "0430", name: "Орех", image: "nut",
                            title: TitlePeriod.getTitlePeriod(period: .nut).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .nut).forecast),
                DataManager(period: .jasmine, start: "0501", finish: "0514", name: "Жасмин", image: "jasmine",
                            title: TitlePeriod.getTitlePeriod(period: .jasmine).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .jasmine).forecast),
                DataManager(period: .chestnut, start: "0515", finish: "0524", name: "Каштан", image: "chestnut",
                            title: TitlePeriod.getTitlePeriod(period: .chestnut).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .chestnut).forecast),
                DataManager(period: .ash, start: "0525", finish: "0603", name: "Ясень", image: "ash",
                            title: TitlePeriod.getTitlePeriod(period: .ash).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .ash).forecast),
                DataManager(period: .hornbeam, start: "0604", finish: "0613", name: "Граб", image: "hornbeam",
                            title: TitlePeriod.getTitlePeriod(period: .hornbeam).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .hornbeam).forecast),
                DataManager(period: .figs, start: "0614", finish: "0623", name: "Инжир", image: "figs",
                            title: TitlePeriod.getTitlePeriod(period: .figs).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .figs).forecast),
                DataManager(period: .birch, start: "0624", finish: "0624", name: "Береза", image: "birch",
                            title: TitlePeriod.getTitlePeriod(period: .birch).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .birch).forecast),
                DataManager(period: .apple, start: "0625", finish: "0704", name: "Яблоня", image: "apple",
                            title: TitlePeriod.getTitlePeriod(period: .apple).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .apple).forecast),
                DataManager(period: .fir, start: "0705", finish: "0714", name: "Пихта", image: "fir",
                            title: TitlePeriod.getTitlePeriod(period: .fir).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .fir).forecast),
                DataManager(period: .elm, start: "0715", finish: "0725", name: "Вяз", image: "elm",
                            title: TitlePeriod.getTitlePeriod(period: .elm).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .elm).forecast),
                DataManager(period: .cypress, start: "0726", finish: "0804", name: "Кипарис", image: "cypress",
                            title: TitlePeriod.getTitlePeriod(period: .cypress).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cypress).forecast),
                DataManager(period: .poplar, start: "0805", finish: "0813", name: "Тополь", image: "poplar",
                            title: TitlePeriod.getTitlePeriod(period: .poplar).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .poplar).forecast),
                DataManager(period: .cedar, start: "0814", finish: "0823", name: "Кедр", image: "cedar",
                            title: TitlePeriod.getTitlePeriod(period: .cedar).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cedar).forecast),
                DataManager(period: .pine, start: "0824", finish: "0902", name: "Сосна", image: "pine",
                            title: TitlePeriod.getTitlePeriod(period: .pine).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .pine).forecast),
                DataManager(period: .willow, start: "0903", finish: "0912", name: "Ива", image: "willow",
                            title: TitlePeriod.getTitlePeriod(period: .willow).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .willow).forecast),
                DataManager(period: .linder, start: "0913", finish: "0922", name: "Липа", image: "linder",
                            title: TitlePeriod.getTitlePeriod(period: .linder).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .linder).forecast),
                DataManager(period: .olive, start: "0923", finish: "0923", name: "Маслина", image: "olive",
                            title: TitlePeriod.getTitlePeriod(period: .olive).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .olive).forecast),
                DataManager(period: .hazel, start: "0924", finish: "1003", name: "Орешник", image: "hazel",
                            title: TitlePeriod.getTitlePeriod(period: .hazel).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .hazel).forecast),
                DataManager(period: .rowan, start: "1004", finish: "1013", name: "Рябина", image: "rowan",
                            title: TitlePeriod.getTitlePeriod(period: .rowan).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rowan).forecast),
                DataManager(period: .maple, start: "1014", finish: "1023", name: "Клен", image: "maple",
                            title: TitlePeriod.getTitlePeriod(period: .maple).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .maple).forecast),
                DataManager(period: .nut, start: "1024", finish: "1102", name: "Орех", image: "nut",
                            title: TitlePeriod.getTitlePeriod(period: .aquarius).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .aquarius).forecast),
                DataManager(period: .jasmine, start: "1103", finish: "1111", name: "Жасмин", image: "jasmine",
                            title: TitlePeriod.getTitlePeriod(period: .jasmine).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .jasmine).forecast),
                DataManager(period: .chestnut, start: "1112", finish: "1121", name: "Каштан", image: "chestnut",
                            title: TitlePeriod.getTitlePeriod(period: .chestnut).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .chestnut).forecast),
                DataManager(period: .ash, start: "1122", finish: "1201", name: "Ясень", image: "ash",
                            title: TitlePeriod.getTitlePeriod(period: .ash).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .ash).forecast),
                DataManager(period: .hornbeam, start: "1202", finish: "1211", name: "Граб", image: "hornbeam",
                            title: TitlePeriod.getTitlePeriod(period: .hornbeam).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .hornbeam).forecast),
                DataManager(period: .figs, start: "1212", finish: "1220", name: "Инжир", image: "figs",
                            title: TitlePeriod.getTitlePeriod(period: .figs).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .figs).forecast),
                DataManager(period: .beech, start: "1221", finish: "1222", name: "Бук", image: "beech",
                            title: TitlePeriod.getTitlePeriod(period: .beech).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .beech).forecast)
            ]
        case .china:
            return [
                DataManager(period: .monkey, start: "2028", finish: "2028", name: "Обезьяны", image: "monkey",
                            title: TitlePeriod.getTitlePeriod(period: .monkey).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .monkey).forecast),
                DataManager(period: .rooster, start: "2029", finish: "2029", name: "Петуха", image: "rooster",
                            title: TitlePeriod.getTitlePeriod(period: .rooster).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rooster).forecast),
                DataManager(period: .dog, start: "2030", finish: "2030", name: "Собаки", image: "dog",
                            title: TitlePeriod.getTitlePeriod(period: .dog).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .dog).forecast),
                DataManager(period: .pig, start: "2031", finish: "2031", name: "Свиньи", image: "pig",
                            title: TitlePeriod.getTitlePeriod(period: .pig).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .pig).forecast),
                DataManager(period: .rat, start: "2032", finish: "2032", name: "Крысы", image: "rat",
                            title: TitlePeriod.getTitlePeriod(period: .rat).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rat).forecast),
                DataManager(period: .ox, start: "2033", finish: "2033", name: "Быка", image: "ox",
                            title: TitlePeriod.getTitlePeriod(period: .ox).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .ox).forecast),
                DataManager(period: .tiger, start: "2034", finish: "2034", name: "Тигра", image: "tiger",
                            title: TitlePeriod.getTitlePeriod(period: .tiger).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .tiger).forecast),
                DataManager(period: .rabbit, start: "2035", finish: "2035", name: "Зайца", image: "rabbit",
                            title: TitlePeriod.getTitlePeriod(period: .rabbit).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rabbit).forecast),
                DataManager(period: .dragon, start: "2036", finish: "2036", name: "Дракона", image: "dragon",
                            title: TitlePeriod.getTitlePeriod(period: .dragon).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .dragon).forecast),
                DataManager(period: .snake, start: "2037", finish: "2037", name: "Змеи", image: "snake",
                            title: TitlePeriod.getTitlePeriod(period: .snake).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .snake).forecast),
                DataManager(period: .horse, start: "2038", finish: "2038", name: "Лошади", image: "horse",
                            title: TitlePeriod.getTitlePeriod(period: .horse).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .horse).forecast),
                DataManager(period: .sheeps, start: "2039", finish: "2039", name: "Овцы", image: "sheeps",
                            title: TitlePeriod.getTitlePeriod(period: .sheeps).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .sheeps).forecast)
            ]
        }
    }
}

// MARK - массивs описаний гороскопов и их периодов

struct TitleHoroscope {
    let horoscope: Horoscope
    let title: String
    let image: String
    
    static func getTitleHoroscope() -> [TitleHoroscope] {
        [
            TitleHoroscope(horoscope: .zodiac, title: Horoscope.zodiac.rawValue, image: "zodiac"),
            TitleHoroscope(horoscope: .china, title: Horoscope.china.rawValue, image: "china"),
            TitleHoroscope(horoscope: .druid, title: Horoscope.druid.rawValue, image: "druid")
        ]
    }
}

// MARK - получение прогноза и описание конкретного периода

struct TitlePeriod {
    static func getTitlePeriod(period: Period) -> TitlesPeriods {
        let titlesPeriods = TitlesPeriods.getTitlesPeriod()
        
        for index in titlesPeriods {
            if period == index.period { return index}
        }
        return titlesPeriods[0]
    }
}

// MARK -  общий массив прогнозов и описаний периодов гороскопа

struct TitlesPeriods {
    let period: Period
    let title: String
    let forecast: String
    
    static func getTitlesPeriod() -> [TitlesPeriods] {
        [
            TitlesPeriods(period: .aries, title: "About aries", forecast: "About aries"),
            TitlesPeriods(period: .taurus, title: "About taurus", forecast: ""),
            TitlesPeriods(period: .gemini, title: "About gemini", forecast: ""),
            TitlesPeriods(period: .cancer, title: "About cancer", forecast: ""),
            TitlesPeriods(period: .leo, title: "About leo", forecast: ""),
            TitlesPeriods(period: .virgo, title: "About virgo", forecast: ""),
            TitlesPeriods(period: .libra, title: "About libra", forecast: ""),
            TitlesPeriods(period: .scorpio, title: "About scorpio", forecast: ""),
            TitlesPeriods(period: .sagittarius, title: "About sagittarius", forecast: ""),
            TitlesPeriods(period: .capricorn, title: "About capricorn", forecast: ""),
            TitlesPeriods(period: .aquarius, title: "About aquarius", forecast: ""),
            TitlesPeriods(period: .pisces, title: "About pisces", forecast: ""),
            
            TitlesPeriods(period: .rat, title: "About rat", forecast: ""),
            TitlesPeriods(period: .ox, title: "About ox", forecast: ""),
            TitlesPeriods(period: .tiger, title: "About tiger", forecast: ""),
            TitlesPeriods(period: .rabbit, title: "About rabbit", forecast: ""),
            TitlesPeriods(period: .dragon, title: "About dragon", forecast: ""),
            TitlesPeriods(period: .snake, title: "About snake", forecast: ""),
            TitlesPeriods(period: .horse, title: "About horse", forecast: ""),
            TitlesPeriods(period: .sheeps, title: "About shuups", forecast: ""),
            TitlesPeriods(period: .monkey, title: "About monkey", forecast: ""),
            TitlesPeriods(period: .rooster, title: "About rooster", forecast: ""),
            TitlesPeriods(period: .dog, title: "About dog", forecast: ""),
            TitlesPeriods(period: .pig, title: "About pig", forecast: ""),
            
            TitlesPeriods(period: .apple, title: "About apple", forecast: ""),
            TitlesPeriods(period: .fir, title: "About fir", forecast: ""),
            TitlesPeriods(period: .elm, title: "About elm", forecast: ""),
            TitlesPeriods(period: .cypress, title: "About cypress", forecast: ""),
            TitlesPeriods(period: .poplar, title: "About poplar", forecast: ""),
            TitlesPeriods(period: .cedar, title: "About cedar", forecast: ""),
            TitlesPeriods(period: .pine, title: "About pine", forecast: ""),
            TitlesPeriods(period: .willow, title: "About willow", forecast: ""),
            TitlesPeriods(period: .linder, title: "About linder", forecast: ""),
            TitlesPeriods(period: .oak, title: "About oak", forecast: ""),
            TitlesPeriods(period: .hazel, title: "About hazel", forecast: ""),
            TitlesPeriods(period: .rowan, title: "About rowan", forecast: ""),
            TitlesPeriods(period: .maple, title: "About maple", forecast: ""),
            TitlesPeriods(period: .nut, title: "About nut", forecast: ""),
            TitlesPeriods(period: .jasmine, title: "About jasmine", forecast: ""),
            TitlesPeriods(period: .chestnut, title: "About chestnut", forecast: ""),
            TitlesPeriods(period: .ash, title: "About ash", forecast: ""),
            TitlesPeriods(period: .hornbeam, title: "About hornbeam", forecast: ""),
            TitlesPeriods(period: .figs, title: "About figs", forecast: ""),
            TitlesPeriods(period: .birch, title: "About birch", forecast: ""),
            TitlesPeriods(period: .olive, title: "About olive", forecast: ""),
            TitlesPeriods(period: .beech, title: "About beech", forecast: "")
        ]
    }
}


// MARK - массив цвета фона в зависимости от типа стиля и типа гороскопа

struct HoroscopeStyle {
    let horoscope: Horoscope
    let style: Style
    let background: UIColor
    
    static func getHoroscopeStyle() -> [HoroscopeStyle] {
        
        let colorDefault = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
        let colorGray = UIColor(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let colorZodiac = UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 0.3)
        let colorDruid = UIColor(displayP3Red: 0, green: 1, blue: 0, alpha: 0.3)
        let colorChina = UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 0.3)
        
        return [
            HoroscopeStyle(horoscope: .zodiac, style: .byDefault, background: colorDefault),
            HoroscopeStyle(horoscope: .zodiac, style: .gray, background: colorGray),
            HoroscopeStyle(horoscope: .zodiac, style: .color, background: colorZodiac),
            
            HoroscopeStyle(horoscope: .druid, style: .byDefault, background: colorDefault),
            HoroscopeStyle(horoscope: .druid, style: .gray, background: colorGray),
            HoroscopeStyle(horoscope: .druid, style: .color, background: colorDruid),
            
            HoroscopeStyle(horoscope: .china, style: .byDefault, background: colorDefault),
            HoroscopeStyle(horoscope: .china, style: .gray, background: colorGray),
            HoroscopeStyle(horoscope: .china, style: .color, background: colorChina)
        ]
    }
}

// MARK -  о разработчиках
 
struct Developer {
    let names: String
    let details: String
    let image: String
    static func getDeveloper() -> [Developer]{
        [
            Developer(names: "Sergey ", details: "Team Leader", image: "sergey"),
            Developer(names: "Alexander Panin", details: "Developer", image: "alexander")
        ]
    }
}

// MARK - перечисления типа гороскопов, типа стиля и периодов гороскопов

enum Horoscope: String {
    case zodiac = "About of Horoscope Zodiac"
    case druid = "About of Horoscope Druid"
    case china = "About of Horoscope Chine"
}

enum Style {
    case byDefault, gray, color
}

enum Period{
    case aries, taurus, gemini, cancer, leo, virgo,
         libra, scorpio, sagittarius, capricorn, aquarius, pisces,
    
         rat, ox, tiger, rabbit, dragon, snake,
         horse, sheeps, monkey, rooster, dog, pig,
         
         apple, fir, elm, cypress, poplar, cedar,
         pine, willow, linder, oak, hazel, rowan,
         maple, nut, jasmine, chestnut, ash, hornbeam,
         figs, birch, olive, beech
}



