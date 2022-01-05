//
//  Data manager.swift
//  PersonHoroscope
//
//  Created by Александр Панин on 01.01.2022.
//

import Foundation
import CoreText
import UIKit

class DataManager {
    
    static let shared = DataManager()
    
    let horoscopeTitle = TitleHoroscope.getTitleHoroscope()
    
    let zodiacTitle = NamesPeriod.getNamesPeriod(for: .zodiac)
    let chinaTitle = NamesPeriod.getNamesPeriod(for: .chine)
    let druidTitle = NamesPeriod.getNamesPeriod(for: .druid)
    
    private init() {}
}

// MARK - массивs описаний гороскопов и их периодов

struct TitleHoroscope {
    let horoscope: Horoscope
    let title: String
    let image: String
    
    static func getTitleHoroscope() -> [TitleHoroscope] {
        [
            TitleHoroscope(horoscope: .zodiac, title: Horoscope.zodiac.rawValue, image: "zodiac"),
            TitleHoroscope(horoscope: .chine, title: Horoscope.chine.rawValue, image: "china"),
            TitleHoroscope(horoscope: .druid, title: Horoscope.druid.rawValue, image: "druid")
        ]
    }
}

// MARK - массив наименований периодов гороскопов и интервалы периодов

struct NamesPeriod {
    let period: PeriodAbout
    let start: String
    let finish: String
    let name: String
    let titleAbout: String
    let image: String
   
    static func getNamesPeriod(for sender: Horoscope) -> [NamesPeriod] {
        switch sender {
        case .zodiac:
            return [
                NamesPeriod(
                    period: .aries, start: "0321", finish: "0420", name: "Овен", titleAbout: PeriodAbout.aries.rawValue, image: "aries"),
                NamesPeriod(
                    period: .taurus, start: "0421", finish: "0521", name: "Телец", titleAbout: PeriodAbout.taurus.rawValue, image: "taurus"),
                NamesPeriod(
                    period: .gemini, start: "0522", finish: "0621", name: "Близнецы", titleAbout: PeriodAbout.gemini.rawValue, image: "gemini"),
                NamesPeriod(
                    period: .cancer, start: "0622", finish: "0722", name: "Рак", titleAbout: PeriodAbout.cancer.rawValue, image: "cancer"),
                NamesPeriod(
                    period: .leo, start: "0723", finish: "0823", name: "Лев", titleAbout: PeriodAbout.leo.rawValue, image: "leo"),
                NamesPeriod(
                    period: .virgo, start: "0824", finish: "0922", name: "Дева", titleAbout: PeriodAbout.virgo.rawValue, image: "virgo"),
                NamesPeriod(
                    period: .libra, start: "0923", finish: "1023", name: "Весы", titleAbout: PeriodAbout.libra.rawValue, image: "libra"),
                NamesPeriod(
                    period: .scorpio, start: "1024", finish: "1122", name: "Скорпион", titleAbout: PeriodAbout.scorpio.rawValue, image: "scorpio"),
                NamesPeriod(
                    period: .sagittarius, start: "1123", finish: "1221", name: "Стрелец", titleAbout: PeriodAbout.sagittarius.rawValue, image: "sagittarius"),
                NamesPeriod(
                    period: .capricorn, start: "1222", finish: "0120", name: "Козерог", titleAbout: PeriodAbout.capricorn.rawValue, image: "capricorn"),
                NamesPeriod(
                    period: .aquarius, start: "0121", finish: "0218", name: "Водолей", titleAbout: PeriodAbout.aquarius.rawValue, image: "aquarius"),
                NamesPeriod(
                    period: .pisces, start: "0219", finish: "0320", name: "Рыбы", titleAbout: PeriodAbout.pisces.rawValue, image: "pisces")
            ]
        case .druid:
            return [
                NamesPeriod(
                    period: .apple, start: "23.12", finish: "01.01", name: "Яблоня", titleAbout: PeriodAbout.apple.rawValue, image: "apple"),
                NamesPeriod(
                    period: .fir, start: "02.01", finish: "11.01", name: "Пихта", titleAbout: PeriodAbout.fir.rawValue, image: "fir"),
                NamesPeriod(
                    period: .elm, start: "12.01", finish: "24.01", name: "Вяз", titleAbout: PeriodAbout.elm.rawValue, image: "elm"),
                NamesPeriod(
                    period: .cypress, start: "25.01", finish: "03.02", name: "Кипарис", titleAbout: PeriodAbout.cypress.rawValue, image: "cypress"),
                NamesPeriod(
                    period: .poplar, start: "04.02", finish: "08.02", name: "Тополь", titleAbout: PeriodAbout.poplar.rawValue, image: "poplar"),
                NamesPeriod(
                    period: .cedar, start: "09.02", finish: "18.02", name: "Кедр", titleAbout: PeriodAbout.cedar.rawValue, image: "cedar"),
                NamesPeriod(
                    period: .pine, start: "19.02", finish: "29.02", name: "Сосна", titleAbout: PeriodAbout.pine.rawValue, image: "pine"),
                NamesPeriod(
                    period: .willow, start: "01.03", finish: "10.03", name: "Ива", titleAbout: PeriodAbout.willow.rawValue, image: "willow"),
                NamesPeriod(
                    period: .linder, start: "11.03", finish: "20.03", name: "Липа", titleAbout: PeriodAbout.linder.rawValue, image: "linder"),
                NamesPeriod(
                    period: .oak, start: "21.03", finish: "21.03", name: "Дуб", titleAbout: PeriodAbout.oak.rawValue, image: "oak"),
                NamesPeriod(
                    period: .hazel, start: "22.03", finish: "31.03", name: "Орешник", titleAbout: PeriodAbout.hazel.rawValue, image: "hazel"),
                NamesPeriod(
                    period: .rowan, start: "01.04", finish: "10.04", name: "Рябина", titleAbout: PeriodAbout.rowan.rawValue, image: "rowan"),
                NamesPeriod(
                    period: .maple, start: "11.04", finish: "20.04", name: "Клен", titleAbout: PeriodAbout.maple.rawValue, image: "maple"),
                NamesPeriod(
                    period: .nut, start: "21.04", finish: "30.04", name: "Орех", titleAbout: PeriodAbout.nut.rawValue, image: "nut"),
                NamesPeriod(
                    period: .jasmine, start: "01.05", finish: "14.05", name: "Жасмин", titleAbout: PeriodAbout.jasmine.rawValue, image: "jasmine"),
                NamesPeriod(
                    period: .chestnut, start: "15.05", finish: "24.05", name: "Каштан", titleAbout: PeriodAbout.chestnut.rawValue, image: "chestnut"),
                NamesPeriod(
                    period: .ash, start: "25.05", finish: "03.06", name: "Ясень", titleAbout: PeriodAbout.ash.rawValue, image: "ash"),
                NamesPeriod(
                    period: .hornbeam, start: "04.06", finish: "13.06", name: "Граб", titleAbout: PeriodAbout.hornbeam.rawValue, image: "hornbeam"),
                NamesPeriod(
                    period: .figs, start: "14.06", finish: "23.06", name: "Инжир", titleAbout: PeriodAbout.figs.rawValue, image: "figs"),
                NamesPeriod(
                    period: .birch, start: "24.06", finish: "24.06", name: "Береза", titleAbout: PeriodAbout.birch.rawValue, image: "birch"),
                NamesPeriod(
                    period: .apple, start: "25.06", finish: "04.07", name: "Яблоня", titleAbout: PeriodAbout.apple.rawValue, image: "apple"),
                NamesPeriod(
                    period: .fir, start: "05.07", finish: "14.07", name: "Пихта", titleAbout: PeriodAbout.fir.rawValue, image: "fir"),
                NamesPeriod(
                    period: .elm, start: "15.07", finish: "25.07", name: "Вяз", titleAbout: PeriodAbout.elm.rawValue, image: "elm"),
                NamesPeriod(
                    period: .cypress, start: "26.07", finish: "04.08", name: "Кипарис", titleAbout: PeriodAbout.cypress.rawValue, image: "cypress"),
                NamesPeriod(
                    period: .poplar, start: "05.08", finish: "13.08", name: "Тополь", titleAbout: PeriodAbout.poplar.rawValue, image: "poplar"),
                NamesPeriod(
                    period: .cedar, start: "14.08", finish: "23.08", name: "Кедр", titleAbout: PeriodAbout.cedar.rawValue, image: "cedar"),
                NamesPeriod(
                    period: .pine, start: "24.08", finish: "02.09", name: "Сосна", titleAbout: PeriodAbout.pine.rawValue, image: "pine"),
                NamesPeriod(
                    period: .willow, start: "03.09", finish: "12.09", name: "Ива", titleAbout: PeriodAbout.willow.rawValue, image: "willow"),
                NamesPeriod(
                    period: .linder, start: "13.09", finish: "22.09", name: "Липа", titleAbout: PeriodAbout.linder.rawValue, image: "linder"),
                NamesPeriod(
                    period: .olive, start: "23.09", finish: "23.09", name: "Маслина", titleAbout: PeriodAbout.olive.rawValue, image: "olive"),
                NamesPeriod(
                    period: .hazel, start: "24.09", finish: "03.10", name: "Орешник", titleAbout: PeriodAbout.hazel.rawValue, image: "hazel"),
                NamesPeriod(
                    period: .rowan, start: "04.10", finish: "13.10", name: "Рябина", titleAbout: PeriodAbout.rowan.rawValue, image: "rowan"),
                NamesPeriod(
                    period: .maple, start: "14.10", finish: "23.10", name: "Клен", titleAbout: PeriodAbout.maple.rawValue, image: "maple"),
                NamesPeriod(
                    period: .nut, start: "24.10", finish: "02.11", name: "Орех", titleAbout: PeriodAbout.nut.rawValue, image: "nut"),
                NamesPeriod(
                    period: .jasmine, start: "03.11", finish: "11.11", name: "Жасмин", titleAbout: PeriodAbout.jasmine.rawValue, image: "jasmine"),
                NamesPeriod(
                    period: .chestnut, start: "12.11", finish: "21.11", name: "Каштан", titleAbout: PeriodAbout.chestnut.rawValue, image: "chestnut"),
                NamesPeriod(
                    period: .ash, start: "22.11", finish: "01.12", name: "Ясень", titleAbout: PeriodAbout.ash.rawValue, image: "ash"),
                NamesPeriod(
                    period: .hornbeam, start: "02.12", finish: "11.12", name: "Граб", titleAbout: PeriodAbout.hornbeam.rawValue, image: "hornbeam"),
                NamesPeriod(
                    period: .figs, start: "12.12", finish: "20.12", name: "Инжир", titleAbout: PeriodAbout.figs.rawValue, image: "figs"),
                NamesPeriod(
                    period: .beech, start: "21.12", finish: "22.12", name: "Бук", titleAbout: PeriodAbout.beech.rawValue, image: "beech")
        ]
        case .chine:
            return [
                
                NamesPeriod(
                    period: .monkey, start: "2028", finish: "2028", name: "Обезьяны", titleAbout: PeriodAbout.monkey.rawValue, image: "monkey"),
                NamesPeriod(
                    period: .rooster, start: "2029", finish: "2029", name: "Петуха", titleAbout: PeriodAbout.rooster.rawValue, image: "rooster"),
                NamesPeriod(
                    period: .dog, start: "2030", finish: "2030", name: "Собаки", titleAbout: PeriodAbout.dog.rawValue, image: "dog"),
                NamesPeriod(
                    period: .pig, start: "2031", finish: "2031", name: "Свиньи", titleAbout: PeriodAbout.pig.rawValue, image: "pig"),
                NamesPeriod(
                    period: .rat, start: "2032", finish: "2032", name: "Крысы", titleAbout: PeriodAbout.rat.rawValue, image: "rat"),
                NamesPeriod(
                    period: .ox, start: "2033", finish: "2033", name: "Быка", titleAbout: PeriodAbout.ox.rawValue, image: "ox"),
                NamesPeriod(
                    period: .tiger, start: "2034", finish: "2034", name: "Тигра", titleAbout: PeriodAbout.tiger.rawValue, image: "tiger"),
                NamesPeriod(
                    period: .rabbit, start: "2035", finish: "2035", name: "Зайца", titleAbout: PeriodAbout.rabbit.rawValue, image: "rabbit"),
                NamesPeriod(
                    period: .dragon, start: "2036", finish: "2036", name: "Дракона", titleAbout: PeriodAbout.dragon.rawValue, image: "dragon"),
                NamesPeriod(
                    period: .snake, start: "2037", finish: "2037", name: "Змеи", titleAbout: PeriodAbout.snake.rawValue, image: "snake"),
                NamesPeriod(
                    period: .horse, start: "2038", finish: "2038", name: "Лошади", titleAbout: PeriodAbout.horse.rawValue, image: "horse"),
                NamesPeriod(
                    period: .sheeps, start: "2039", finish: "2039", name: "Овцы", titleAbout: PeriodAbout.sheeps.rawValue, image: "sheeps")
                ]
        }
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
            
            HoroscopeStyle(horoscope: .chine, style: .byDefault, background: colorDefault),
            HoroscopeStyle(horoscope: .chine, style: .gray, background: colorGray),
            HoroscopeStyle(horoscope: .chine, style: .color, background: colorChina)
        ]
    }
}
 
// MARK - перечисления типа гороскопов, типа стиля и периодов гороскопов

enum Horoscope: String {
    case zodiac = "About of Horoscope Zodiac"
    case druid = "About of Horoscope Druid"
    case chine = "About of Horoscope Chine"
}

enum Style {
    case byDefault, gray, color
}

enum PeriodAbout: String {
    case aries = "About aries"
    case taurus = "About taurus"
    case gemini = "About gemini"
    case cancer = "About cancer"
    case leo = "About leo"
    case virgo = "About virgo"
    case libra = "About libra"
    case scorpio = "About scorpio"
    case sagittarius = "About sagittarius"
    case capricorn = "About capricorn"
    case aquarius = "About aquarius"
    case pisces = "About pisces"
    
    case rat = "About rat"
    case ox = "About ox"
    case tiger = "About tiger"
    case rabbit = "About rabbit"
    case dragon = "About dragon"
    case snake = "About snake"
    case horse = "About horse"
    case sheeps = "About shuups"
    case monkey = "About monkey"
    case rooster = "About rooster"
    case dog = "About dog"
    case pig = "About pig"
    
    case apple = "About apple"
    case fir = "About fir"
    case elm = "About elm"
    case cypress = "About cypress"
    case poplar = "About poplar"
    case cedar = "About cedar"
    case pine = "About pine"
    case willow = "About willow"
    case linder = "About linder"
    case oak = "About oak"
    case hazel = "About hazel"
    case rowan = "About rowan"
    case maple = "About maple"
    case nut = "About nut"
    case jasmine = "About jasmine"
    case chestnut = "About chestnut"
    case ash = "About ash"
    case hornbeam = "About hornbeam"
    case figs = "About figs"
    case birch = "About birch"
    case olive = "About olive"
    case beech = "About beech"
}



